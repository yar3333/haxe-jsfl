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
	
	static var staticClasses = [ "fl", "FLfile" ]; // force methods of this classes to be static
	static var classNotTypedefs = [ "fl", "FLfile" ]; // other will be typedefs
	
	static var knownTypes =
	[
		"integer" => "Int",
		"string" => "String",
		"boolean" => "Bool",
		"true" => "Bool",
		"false" => "Bool",
		"floating-point" => "Float",
		"floating point" => "Float",
		"float value" => "Float",
		"integer or float" => "Float",
		"point" => "JSFLPoint",
		"rectangle" => "JSFLRect",
		"data" => "Dynamic",
		"array of actionScript 2.0 properties" => "Array<Parameter>",
		"color" => "Dynamic",
		"top" => "Float",
		"array of the selected objects" => "Array<Dynamic>",
		"uri" => "String",
		"date" => "Date",
		"library item (see sounditem object)" => "SoundItem",
		"location of the vertex in pixels" => "Float",
		"library item" => "Item",
		"pair of floating-point values that specify the x and y coordinates" => "JSFLPoint",
		"array of binary" => "Dynamic",
		"index" => "Int",
	];
	
	static var typeByName =
	[
		"*.boundingRectangle" => "JSFLRect",
		"*.data" => "Dynamic",
		"*.startpoint" => "JSFLPoint",
		"*.endpoint" => "JSFLPoint",
		"*.profileName" => "String",
		"*.name" => "String",
		"*.arrangeMode" => "String",
		"*.profileNewName" => "String",
		"*.bOkToSaveAs" => "Bool",
		"*.xyzCoordinate" => "{ x:Float, y:Float, z:Float }",
		"*.index" => "Int",
		
		"BitmapInstance.getBits" => "BitmapInstanceBits",
		"BitmapInstance.setBits.bitmap" => "BitmapInstanceBits",
		
		"Document.publishProfiles" => "Array<String>",
		"Document.screenOutline" => "ScreenOutline",
		"Document.zoomFactor" => "Float",
		"Document.addDataToSelection.type" => "String",
		"Document.addNewPrimitiveRectangle.rect" => "JSFLRect",
		"Document.convertToSymbol" => "SymbolInstance",
		"Document.convertToSymbol.registrationPoint" => "String",
		"Document.getElementProperty" => "Dynamic",
		"Document.getSelectionRect" => "JSFLRect",
		"Document.getElementTextAttr" => "Dynamic",
		"Document.moveSelectionBy.distanceToMove" => "JSFLPoint",
		"Document.setElementTextAttr.attrValue" => "String",
		"Document.xmlPanel" => "Dynamic<String>",
		"Document.setSelectionRect.rect" => "JSFLRect",
		"Document.selection" => "Array<Dynamic>",
		
		"Filter.type" => "String",
		
		"Frame.startFrame" => "Int",
		"Frame.getCustomEase" => "Array<JSFLPoint>",
		"Frame.setCustomEase.easeCurve" => "Array<JSFLPoint>",
		"Frame.setMotionObjectDuration.duration" => "Int",
		"Frame.getMotionObjectXML" => "String",
		"Frame.hasMotionPath" => "Bool",
		"Frame.is3DMotionObject" => "Bool",
		"Frame.isMotionObject" => "Bool",
		
		"Library.importEmbeddedSWF.swfData" => "Dynamic",
		
		"Parameter.value" => "Dynamic",
		"Parameter.listIndex" => "Int",
		"Parameter.verbose" => "Int",
		
		"Shape.members" => "Array<Dynamic>",
		"Shape.numCubicSegments" => "Int",
		
		"SymbolInstance.colorRedPercent" => "Float",
		"SymbolInstance.colorGreenPercent" => "Float",
		"SymbolInstance.colorBluePercent" => "Float",
		"SymbolInstance.colorAlphaPercent" => "Float",
		
		"Text.setTextAttr.attrValue" => "Dynamic",
		
		"TextRun.characters" => "String",
		"TextRun.textAttrs" => "TextAttrs",
		
		"Timeline.libraryItem" => "Item",
		"Timeline.getFrameProperty" => "Dynamic",
		"Timeline.getLayerProperty" => "Dynamic",
		"Timeline.reorderLayer.bAddBefore" => "Bool",
		
		"Vertex.x" => "Float",
		"Vertex.y" => "Float",
		
		"XMLUI.getControlItemElement" => "{ label:String, value:String }",
		"XMLUI.setControlItemElement.elementItem" => "{ label:String, value:String }",
		"XMLUI.setControlItemElements.elementItemArray" => "Array<{ label:String, value:String }>",
	];
	
	static var optionalByName =
	[
		"*.bSuppressFill" => "true",
		"*.bSuppressStroke" => "true",
		"*.bPromptToSaveChanges" => "true",
		"*.bUseDocumentBounds" => "true",
		"*.bReplaceCurrentSelection" => "true",
		"*.bContactSensitiveSelection" => "true",
		"*.abortIfErrorsExist" => "true",
		
		"Document.addNewScene.name" => "true",
		"Document.addNewPublishProfile.profileName" => "true",
		"Document.enterEditMode.editMode" => "true",
		"Document.exportPNG.fileURI" => "true",
		"Document.exportPNG.bCurrentPNGSettings" => "true",
		"Document.exportPNG.bCurrentFrame" => "true",
		"Document.exportSWF.fileURI" => "true",
		"Document.exportSWF.bCurrentSettings" => "true",
		"Document.getCustomFill.objectToFill" => "true",
		"Document.getElementTextAttr.startIndex" => "true",
		"Document.importFile.importToLibrary" => "true",
		"Document.rotateSelection.rotationPoint" => "true",
		"Document.scaleSelection.whichCorner" => "true",
		"Document.setTextString.startIndex" => "true",
		"Document.skewSelection.whichEdge" => "true",
		
		"Library.addItemToDocument.namePath" => "true",
		"Library.addNewItem.namePath" => "true",
		"Library.deleteItem.namePath" => "true",
		"Library.duplicateItem.namePath" => "true",
		"Library.editItem.namePath" => "true",
		"Library.expandFolder.bRecurseNestedParents" => "true",
		"Library.getItemType.namePath" => "true",
		"Library.selectAll.bSelectAll" => "true",
		"Library.selectItem.bSelect" => "true",
		"Library.updateItem.namePath" => "true",
		"Library.importEmbeddedSWF.libName" => "true",
		"Library.moveToFolder.itemToMove" => "true",
		"Library.moveToFolder.bReplace" => "true",
		"Library.newFolder.folderPath" => "true",
		
		"Path.makeShape.bSupressStroke" => "true",
		
		"Text.getTextAttr.endIndex" => "true",
		"Text.getTextString.endIndex" => "true",
		"Text.setTextAttr.endIndex" => "true",
		"Text.setTextString.endIndex" => "true",
		"Text.setTextString.startIndex" => "true",
		
		"Timeline.addNewLayer.*" => "true",
		"Timeline.clearFrames.*" => "true",
		"Timeline.convertToBlankKeyframes.*" => "true",
		"Timeline.convertToKeyframes.*" => "true",
		"Timeline.copyFrames.*" => "true",
		"Timeline.clearKeyframes.*" => "true",
		"Timeline.copyLayers.*" => "true",
		"Timeline.cutLayers.*" => "true",
		"Timeline.createMotionObject.*" => "true",
		"Timeline.createMotionTween.*" => "true",
		"Timeline.cutFrames.*" => "true",
		"Timeline.getFrameProperty.startFrameIndex" => "true",
		"Timeline.getFrameProperty.endFrameIndex" => "true",
		"Timeline.deleteLayer.index" => "true",
		"Timeline.insertBlankKeyframe.frameNumIndex" => "true",
		"Timeline.insertFrames.*" => "true",
		"Timeline.insertKeyframe.frameNumIndex" => "true",
		"Timeline.expandFolder.bRecurseNestedParents" => "true",
		"Timeline.pasteFrames.*" => "true",
		"Timeline.pasteLayers.*" => "true",
		"Timeline.removeFrames.*" => "true",
		"Timeline.removeMotionObject.*" => "true",
		"Timeline.reverseFrames.*" => "true",
		"Timeline.setFrameProperty.startFrameIndex" => "true",
		"Timeline.setFrameProperty.endFrameIndex" => "true",
		"Timeline.setLayerProperty.layersToChange" => "true",
		"Timeline.setSelectedFrames.endFrameIndex" => "true",
		"Timeline.setSelectedFrames.selectionList" => "true",
		"Timeline.expandFolder.index" => "true",
		"Timeline.reorderLayer.bAddBefore" => "true",
		
		"PresetPanel.selectItem.bSelect" => "true",
		"PresetPanel.expandFolder.bRecurse" => "true",
	];
	
	static var fixParamName =
	[
		"startpoint" => "startPoint",
		"endpoint" => "endPoint",
		"alignmode" => "alignMode",
		"registration point" => "registrationPoint",
		"bAltdown" => "bAltDown",
		"Placeholder" => "placeholder",
	];
	
	static function main()
	{
		lowerMapKeys(knownTypes);
		lowerMapKeys(typeByName);
		lowerMapKeys(optionalByName);
		lowerMapKeys(fixParamName);
		
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
			var method = new Method("Void", name.substr(0, name.length - 2), [], "", staticClasses.has(klass.name));
			processMethod(klass.name, method, inner);
			klass.methods.push(method);
		}
		else
		{
			var attribute = new Attribute("Dynamic", name, "", false);
			processAttribute(klass.name, attribute, inner);
			klass.attributes.push(attribute);
		}
		
		log.finishOk();
	}
	
	static function processMethod(klassName:String, method:Method, inner:HtmlNodeElement)
	{
		var titles = inner.find(">div.cls_020");
		
		method.type = findType(klassName + "." + method.name, "", "Void");
		
		structurize(inner, titles, function(title, inner)
		{
			var titleName = title.find(">span.cls_020")[0].innerHTML;
			
			switch (titleName)
			{
				case "Parameters":
					processParams(klassName, method.name, method.params, inner);
				case "Returns": 
					method.type = findType(klassName + "." + method.name, inner.toString().stripTags(), "Void");
				case "Description":
					method.desc = inner.toString().stripTags().trim();
					if (method.desc.startsWith("Method; "))
					{
						method.desc = method.desc.substr("Method; ".length).ltrim().capitalize();
					}
			}
		});
	}
	
	static function processParams(klassName:String, methodName:String, params:Array<MethodParam>, inner:HtmlNodeElement)
	{
		var nodes = inner.children.filter(function(a) return a.name == "div" && [ "cls_011", "cls_029" ].has(a.getAttribute("class")));
		structurize(inner, nodes, function(node, _)
		{
			var nameNode = node.find(">span")[0];
			if (nameNode != null)
			{
				var name = nameNode.innerHTML.trim();
				if (fixParamName.exists(name.toLowerCase())) name = fixParamName.get(name.toLowerCase());
				nameNode.remove();
				var desc = node.toString().stripTags().trim();
				var type = findType(klassName + "." + methodName + "." + name, desc, "Dynamic");
				var optional = 
					optionalByName.exists((klassName + "." + methodName + "." + name).toLowerCase()) 
				 || optionalByName.exists("*." + name.toLowerCase())
				 || optionalByName.exists((klassName + "." + methodName).toLowerCase() + ".*")
				 || desc.indexOf("optional") >= 0;
				
				for (name in name.split(","))
				{
					params.push( { name:name.trim(), type:type, optional:optional, desc:desc } );
				}
			}
		});
	}
	
	static function processAttribute(klassName:String, attribute:Attribute, inner:HtmlNodeElement)
	{
		var titles = inner.find(">div.cls_020");
		structurize(inner, titles, function(title, inner)
		{
			var titleName = title.find(">span.cls_020")[0].innerHTML;
			
			switch (titleName)
			{
				case "Description":
					attribute.desc = inner.toString().stripTags().trim();
					if (attribute.desc.startsWith("Property; "))
					{
						attribute.desc = attribute.desc.substr("Property; ".length).ltrim().capitalize();
					}
					else
					if (attribute.desc.startsWith("Read-only property; "))
					{
						attribute.desc = "Read-only. " + attribute.desc.substr("Read-only property; ".length).ltrim().capitalize();
					}
					attribute.type = findType(klassName + "." + attribute.name, attribute.desc, "Dynamic");
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
	
	static function findType(name:String, desc:String, def:String) : String
	{
		var name = name.toLowerCase();
		if (typeByName.exists(name)) return typeByName.get(name);
		var parts = name.split(".");
		if (parts.length == 3 && typeByName.exists("*." + parts[2])) return typeByName.get("*." + parts[2]);
		return extractType(desc, def);
	}
	
	static function extractType(s:String, def:String)
	{
		s = s.toLowerCase();
		
		if (s.startsWith("an object")) return "Dynamic";
		
		var bestType = null;
		var bestN = 1e9;
		var arr = false;
		var bestWordCount = 0;
		for (key in knownTypes.keys())
		{
			var n = s.indexOf("array of " + key);
			if (n >= 0 && (n < bestN || n == bestN && ("array of " + key).split(" ").length > bestWordCount))
			{
				bestType = key;
				bestN = n;
				bestWordCount = ("array of " + key).split(" ").length;
				arr = true;
			}
			n = s.indexOf(key);
			if (n >= 0 && (n < bestN || n == bestN && key.split(" ").length > bestWordCount))
			{
				bestType = key;
				bestN = n;
				bestWordCount = key.split(" ").length;
				arr = s.startsWith("an array");
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
	
	static function lowerMapKeys(map:Map<String, String>)
	{
		for (key in map.keys())
		{
			if (key.toLowerCase() != key)
			{
				var v = map[key];
				map.remove(key);
				map.set(key.toLowerCase(), v);
			}
		}
	}
}
