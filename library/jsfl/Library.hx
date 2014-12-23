package jsfl;

extern class Library
{
	var items : Array<Item>;
	
	function addItemToDocument(position:JSFLPoint, ?namePath:String) : Bool;
	function addNewItem(type:String, ?namePath:String) : Bool;
	function deleteItem(?namePath:String) : Bool;
	function duplicateItem(?namePath:String) : Bool;
	function editItem(?namePath:String) : Bool;
	function expandFolder(bExpand:Bool, ?bRecurseNestedParents:Bool, ?namePath:String) : Bool;
	function findItemIndex(namePath:String) : Int;
	function getItemProperty(property:String) : String;
	function getItemType(?namePath:String) : String;
	function getSelectedItems() : Array<Item>;
	function importEmbeddedSWF(linkageName:String, swfData:Dynamic, ?libName:String) : Void;
	function itemExists(namePath:String) : Bool;
	function moveToFolder(folderPath:String, ?itemToMove:String, ?bReplace:Bool) : Bool;
	function newFolder(?folderPath:String) : Bool;
	function renameItem(name:String) : Bool;
	function selectAll(?bSelectAll:Bool) : Void;
	function selectItem(namePath:String, ?bReplaceCurrentSelection:Bool, ?bSelect:Bool) : Bool;
	function selectNone() : Void;
	function setItemProperty(property:String, value:Dynamic) : Void;
	function updateItem(?namePath:String) : Bool;
}