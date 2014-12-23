import hant.Log;
import htmlparser.HtmlNodeElement;
import htmlparser.HtmlDocument;
import haxe.io.Path;
import stdlib.Serializer;
import stdlib.Unserializer;
import sys.FileSystem;
import sys.io.File;
import neko.Lib;
using StringTools;

class Main
{
	static var log = new Log();
	
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
		log.finishOk(Std.string(chapters.length));
			
		log.start("Process chapters");
		structurize(body, chapters, function(chapter, inner)
		{
			
			reChapter.match(chapter.find(">span")[0].innerHTML);
			var name = reChapter.matched(1);
			
			log.start("Class '" + name + "'");
			var klass = new Klass(name, null, [], [], []);
			var fields = inner.find(">div.cls_017>span.cls_017").map(function(a) return a.parent);
			structurize(inner, fields, function(field, inner)
			{
				var fieldName = field.find(">span")[0].innerHTML;
				if (fieldName.startsWith(name + "."))
				{
					processField(klass, fieldName.substr(name.length + 1), inner);
				}
			});
			File.saveContent("../../library/jsfl/" + klass.name + ".hx", klass.toString("jsfl", []));
			log.finishOk();
		});
		log.finishOk();
	}
	
	static function processField(klass:Klass, name:String, inner:HtmlNodeElement)
	{
		log.start("Field '" + name + "'");
		
		if (name.endsWith("()"))
		{
			var method = new Method(null, name.substr(0, name.length - 2), []);
			processMethod(method, inner);
			klass.methods.push(method);
		}
		else
		{
			var attribute = new Attribute(null, name, "", false);
			processAttribute(attribute, inner);
			klass.attributes.push(attribute);
		}
		
		log.finishOk();
	}
	
	static function processMethod(method:Method, inner:HtmlNodeElement)
	{
		var titles = inner.find(">div.cls_020>span.cls_020").map(function(a) return a.parent);
		structurize(inner, titles, function(title, inner)
		{
			var titleName = title.find(">span")[0].innerHTML;
			log.trace("Title: " + titleName);
			/*
			switch (titleName)
			{
				case "Description": attribute.desc = inner.toString().
			}*/
		});
	}
	
	static function processAttribute(attribute:Attribute, inner:HtmlNodeElement)
	{
		var titles = inner.find(">div.cls_020>span.cls_020").map(function(a) return a.parent);
		structurize(inner, titles, function(title, inner)
		{
			var titleName = title.find(">span")[0].innerHTML;
			log.trace("Title: " + titleName);
			
			switch (titleName)
			{
				case "Description":
					attribute.desc = stdlib.StringTools.stripTags(inner.toString());
					//attribute.
			}
		});
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
}
