package jsfl;

typedef PresetPanel =
{
	var items : Array<PresetItem>;
	
	function addNewItem(namePath:String) : Bool;
	function applyPreset(presetPath:String) : Bool;
	function deleteFolder(?folderPath:String) : Bool;
	function deleteItem(namePath:String) : Bool;
	function expandFolder(bExpand:Bool, ?bRecurse:Bool, ?folderPath:String) : Bool;
	function exportItem(?fileURI:String, namePath:String) : Bool;
	function findItemIndex(presetName:String) : Int;
	function getSelectedItems() : Array<PresetItem>;
	function importItem(fileURI:String, namePath:String) : Bool;
	function moveToFolder(folderPath:String, ?namePath:String) : Bool;
	function newFolder(folderPath:String) : Bool;
	function renameItem(newName:String) : Bool;
	function selectItem(namePath:String, ?bReplaceCurrentSelection:Bool, ?bSelect:Bool) : Bool;
}