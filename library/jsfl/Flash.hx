package jsfl;

@:native("fl") extern class Flash
{
	static var actionsPanel : ActionsPanel;
	static var activeEffect : Effect;
	static function addEventListener(eventType:String, callbackFunction:Void->Void) : Void;
	static var as3PackagePaths : String;
	static function browseForFileURL(browseType:String, ?title:String, ?previewArea:Void) : String;
	static function browseForFolderURL(?description:String) : String;
	static function clipCopyString(string:String) : Void;
	static function closeAll(?bPromptToSave:Bool) : Void;
	static function closeAllPlayerDocuments() : Bool;
	static function closeDocument(documentObject:Document, ?bPromptToSaveChanges:Bool) : Void;
	static function closeProject() : Bool;
	static var compilerErrors : CompilerErrors;
	static var componentsPanel : ComponentsPanel;
	static var configDirectory : String;
	static var configURI : String;
	static var contactSensitiveSelection : Bool;
	static function createDocument(?docType:String) : Document;
	static var createNewDocList : Array<String>;
	static var createNewDocListType : Array<String>;
	static var createNewTemplateList : Array<String>;
	static function createProject(fileURI:String, ?name:String) : Project;
	static var documents : Array<Document>;
	static function downloadLatestVersion(fileURI:String) : Bool;
	static var drawingLayer : DrawingLayer;
	static var effects : Array<Effect>;
	static function enableImmediateUpdates(bEnableUpdates:Bool) : Void;
	static function fileExists(fileURI:String) : Bool;
	static function findDocumentDOM(id:Int) : Document;
	static function findDocumentIndex(name:String) : Array<Int>;
	static function findObjectInDocByName(instanceName:String, document:Document) : Array<{ keyframe:Dynamic, layer:Layer, timeline:Timeline, parent:Dynamic, obj:Dynamic }>;
	static function findObjectInDocByType(elementType:String, document:Document) : Array<{ keyframe:Dynamic, layer:Layer, timeline:Timeline, parent:Dynamic, obj:Dynamic }>;
	static function getAppMemoryInfo(memType:Int) : Int;
	static function getDocumentDOM() : Document;
	static function getProject() : Project;
	static function mapPlayerURL(URI:String, ?returnMBCS:Bool) : String;
	static var Math : Math;
	static var mruRecentFileList : Array<String>;
	static var mruRecentFileListType : Array<String>;
	static var objectDrawingMode : Bool;
	static function openDocument(fileURI:String) : Document;
	static function openProject(fileURI:String) : Project; //returns Void in MX 2004
	static function openScript(fileURI:String) : Void;
	static var outputPanel : OutputPanel;
	static var packagePaths : String;
	static function quit(?bPromptIfNeeded:Bool) : Void;
	static function reloadEffects() : Void;
	static function reloadTools() : Void;
	static function removeEventListener(eventType:String) : Bool;
	static function resetAS3PackagePaths() : Void;
	static function resetPackagePaths() : Void;
	static function revertDocument(documentObject:Document) : Bool;
	static function revertDocumentToLastVersion(documentObject:Document) : Bool;
	static function runScript(fileURI:String, ?funcName:String, ?arg1:Dynamic, ?p1 : Dynamic,  ?p2 : Dynamic,  ?p3 : Dynamic,  ?p4 : Dynamic,  ?p5 : Dynamic,  ?p6 : Dynamic,  ?p7 : Dynamic,  ?p8 : Dynamic,  ?p9 : Dynamic) : Void;
	static function saveAll() : Void;
	static function saveAVersionOfDocument(document:Document) : Bool;
	static function saveDocument(document:Document, ?fileURI:String) : Bool;
	static function saveDocumentAs(document:Document) : Bool;
	static var scriptURI : String;
	static function selectElement(elementObject:Element, editMode:Bool) : Bool;
	static function selectTool(toolName:String) : Void;
	static function setActiveWindow(document:Document, ?bActivateFrame:Bool) : Void;
	static function showIdleMessage(show:Bool) : Void;
	static function synchronizeDocumentWithHeadVersion(documentObject:Document) : Bool;
	static var tools : Array<Tools>;
	static function trace(message:Dynamic) : Void;
	static var version : String;
	static var xmlui : XMLUI;
	
	static function __init__() : Void
	{
		haxe.Log.trace = function(v:Dynamic, ?infos:haxe.PosInfos) untyped fl.trace(v);
	}
}
