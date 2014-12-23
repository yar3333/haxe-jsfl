import hant.Log;
import htmlparser.HtmlDocument;
import htmlparser.HtmlNodeElement;
import stdlib.Serializer;
import stdlib.Unserializer;
import sys.io.File;
using stdlib.StringTools;
using Lambda;

class Main
{
	static var log = new Log();
	
	static var staticClasses = [ "fl", "FLfile" ]; // force methods to be statci
	static var classNotTypedefs = [ "fl", "FLfile" ]; // other will be typedefs
	
	static var knownTypes =
	[
		"integer" => "Int",
		"string" => "String",
		"boolean" => "Bool",
		"true" => "Bool",
		"false" => "Bool",
		"floating-point" => "Float",
		"float value" => "Float"
	];
	
	static function main()
	{
		log.start("Parse html");
		var doc = new HtmlDocument(File.getContent("../../native/flash_cs5_extending.html"));
		log.finishOk();
		
		var body = doc.find(">body")[0];
		
		log.start("Remove images");
		var imgRemoved = 0;
		for (img in body.find(">div>div>img"))
		{
			if (img.parent.children.length == 1)
			{
				img.parent.remove();
				imgRemoved++;
			}
		}
		log.finishOk(Std.string(imgRemoved));
		
		log.start("Remove page numbers");
		var pageNumberRemoved = 0;
		for (span in body.find(">div>div.cls_009>span.cls_009"))
		{
			if (~/^[ivx0-9]+$/.match(span.innerHTML) && span.parent.children.length == 1)
			{
				span.parent.remove();
				pageNumberRemoved++;
			}
		}
		log.finishOk(Std.string(pageNumberRemoved));
		
		log.start("Remove header");
		var headerRemoved = 0;
		for (span in body.find(">div>div.cls_013>span.cls_013"))
		{
			if (span.innerHTML == "EXTENDING FLASH PROFESSIONAL" && span.parent.children.length == 1)
			{
				span.parent.remove();
				headerRemoved++;
			}
		}
		for (page in body.find(">div"))
		{
			if (page.children.length > 0)
			{
				if (page.children[0].name == "div" && page.children[0].getAttribute("class") == "cls_014")
				{
					var spans = page.children[0].find(">span.cls_014");
					if (spans.length == 1)
					{
						spans[0].parent.remove();
						headerRemoved++;
					}
				}
			}
		}
		log.finishOk(Std.string(headerRemoved));
		
		log.start("Remove footer");
		var footerRemoved = 0;
		for (span in body.find(">div>div.cls_005>span.cls_005"))
		{
			if (span.innerHTML == "Last updated 5/2/2011" && span.parent.children.length == 1)
			{
				span.parent.remove();
				footerRemoved++;
			}
		}
		log.finishOk(Std.string(footerRemoved));
		
		log.start("Avoid pages structure");
		var pageAvoided = 0;
		for (page in body.find(">div"))
		{
			body.replaceChildWithInner(page, page);
			pageAvoided++;
		}
		log.finishOk(Std.string(pageAvoided));
		
		var reChapter = ~/^Chapter\s*\d+:\s*([_a-zA-Z][_a-zA-Z0-9]+)\s*object$/;
		
		log.start("Find classes");
			var chapters = body.find(">div.cls_010>span.cls_010")
				.map(function(span) return reChapter.match(span.innerHTML) ? span.parent : null)
				.filter(function(a) return a != null);
			
			for (chapter in chapters)
			{
				reChapter.match(chapter.find(">span")[0].innerHTML.trim());
				var name = reChapter.matched(1);
				knownTypes.set(name.toLowerCase(), name.capitalize());
			}
		log.finishOk(Std.string(chapters.length));
			
		log.start("Process chapters");
		structurize(body, chapters, function(chapter, inner)
		{
			reChapter.match(chapter.find(">span")[0].innerHTML.trim());
			var name = reChapter.matched(1);
			
			//if (name != "Contour") return; ///////////////////////////////////////
			
			log.start("Class '" + name + "'");
			var klass = new Klass(!classNotTypedefs.has(name), name, getClassInherits(inner), [], [], []);
			
			var fields = inner.find(">div.cls_017>span.cls_017").map(function(a) return a.parent);
			structurize(inner, fields, function(field, inner)
			{
				var fieldName = field.find(">span")[0].innerHTML;
				if (fieldName.toLowerCase().startsWith(name.toLowerCase() + "."))
				{
					processField(klass, fieldName.substr(name.length + 1), inner);
				}
			});
			File.saveContent("../../library/jsfl/" + klass.name.capitalize() + ".hx", klass.toString("jsfl", []));
			log.finishOk();
		});
		log.finishOk();
	}
	
	static function processField(klass:Klass, name:String, inner:HtmlNodeElement)
	{
		log.start("Field '" + name + "'");
		
		if (name.endsWith("()"))
		{
			var method = new Method(null, name.substr(0, name.length - 2), [], "", staticClasses.has(klass.name));
			processMethod(method, inner);
			klass.methods.push(method);
		}
		else
		{
			var attribute = new Attribute("Dynamic", name, "", false);
			processAttribute(attribute, inner);
			klass.attributes.push(attribute);
		}
		
		log.finishOk();
	}
	
	static function processMethod(method:Method, inner:HtmlNodeElement)
	{
		var titles = inner.find(">div.cls_020");
		structurize(inner, titles, function(title, inner)
		{
			var titleName = title.find(">span.cls_020")[0].innerHTML;
			//log.trace("Title: " + titleName);
			
			switch (titleName)
			{
				case "Parameters":
					processParams(method.params, inner);
				case "Returns": 
					method.type = extractType(inner.toString().stripTags(), "Void");
				case "Description":
					method.desc = inner.toString().stripTags().trim();
					if (method.desc.startsWith("Method; "))
					{
						method.desc = method.desc.substr("Method; ".length).ltrim().capitalize();
					}
			}
		});
	}
	
	static function processParams(params:Array<MethodParam>, inner:HtmlNodeElement)
	{
		var nodes = inner.children.filter(function(a) return a.name == "div" && [ "cls_011", "cls_029" ].has(a.getAttribute("class")));
		structurize(inner, nodes, function(node, _)
		{
			var nameNode = node.find(">span")[0];
			if (nameNode != null)
			{
				nameNode.remove();
				var desc = node.toString().stripTags().trim();
				var type = extractType(desc);
				var optional = desc.startsWith("An optional");
				params.push( { name:nameNode.innerHTML.trim(), type:type, optional:optional, desc:desc } );
			}
		});
	}
	
	static function processAttribute(attribute:Attribute, inner:HtmlNodeElement)
	{
		var titles = inner.find(">div.cls_020");
		structurize(inner, titles, function(title, inner)
		{
			var titleName = title.find(">span.cls_020")[0].innerHTML;
			//log.trace("Title: " + titleName);
			
			switch (titleName)
			{
				case "Description":
					attribute.desc = inner.toString().stripTags().trim();
					attribute.type = extractType(attribute.desc);
			}
		});
	}
	
	static function getClassInherits(inner:HtmlNodeElement) : String
	{
		for (node in inner.find(">div.cls_011>span.cls_011"))
		{
			if (node.innerHTML.trim() == "Inheritance")
			{
				var nodes = node.parent.find(">span.cls_018");
				var r = nodes[nodes.length - 1].innerHTML.trim();
				if (r.endsWith(" object")) return r.substr(0, r.length - " object".length);
				return null;
			}
		}
		return null;
	}
	
	static function structurize(root:HtmlNodeElement, items:Array<HtmlNodeElement>, f:HtmlNodeElement->HtmlNodeElement->Void)
	{
		for (i in 0...items.length)
		{
			var from = root.children.indexOf(items[i]) + 1;
			var to = i + 1 < items.length ? root.children.indexOf(items[i + 1]) : null;
			var lines = root.children.slice(from, to);
			var inner = new HtmlNodeElement("root", []); for (line in lines) inner.addChild(Unserializer.run(Serializer.run(line)));
			f(items[i], inner);
		}
	}
	
	static function extractType(s:String, def="Dynamic")
	{
		s = s.toLowerCase();
		
		if (s.startsWith("an object")) return "Dynamic";
		
		var bestType = null;
		var bestN = 1e9;
		var arr = false;
		for (key in knownTypes.keys())
		{
			var n = s.indexOf("array of " + key);
			if (n >= 0 && n < bestN)
			{
				bestType = key;
				bestN = n;
				arr = true;
			}
			n = s.indexOf(key);
			if (n >= 0 && n < bestN)
			{
				bestType = key;
				bestN = n;
				arr = false;
			}
		}
		
		if (bestType != null)
		{
			var r = knownTypes.get(bestType);
			if (arr)
			{
				r = "Array<" + r + ">";
			}
			return r;
		}
		
		return def;
	}
}
