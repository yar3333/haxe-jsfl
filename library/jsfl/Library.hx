package jsfl;
import jsfl.Item.ItemType;

typedef Library =
{
	/**
	 * Flash MX 2004.
	 * Adds the current or specified item to the Stage at the specified position.
	 * @param position A point that specifies the x,y position of the center of the item on the Stage.
	 * @param namePath A string that specifies the name of the item. If the item is in a folder, you can specify its name and path using
	 */
	function addItemToDocument(position:JSFLPoint, ?namePath:String) : Bool;
	/**
	 * Flash MX 2004.
	 * Creates a new item of the specified type in the Library panel and sets the new item to the currently selecteditem. For more information on importing items into the library, including items such as sounds, seedocument.importFile().
	 * @param type A string that specifies the type of item to create. The only acceptable values for type are "video", "movie clip",
	 * @param namePath A string that specifies the name of the item to be added. If the item is in a folder, specify its name and path
	 */
	function addNewItem(type:ItemType, ?namePath:String) : Bool;
	/**
	 * Flash MX 2004.
	 * Deletes the current items or a specified item from the Library panel. This method can affect multiple items ifseveral are selected.
	 * @param namePath A string that specifies the name of the item to be deleted. If the item is in a folder, you can specify its name
	 */
	function deleteItem(?namePath:String) : Bool;
	/**
	 * Flash MX 2004.
	 * Makes a copy of the currently selected or specified item. The new item has a default name (such as item copy)and is set as the currently selected item. If more than one item is selected, the command fails.
	 * @param namePath A string that specifies the name of the item to duplicate. If the item is in a folder, you can specify its name
	 */
	function duplicateItem(?namePath:String) : Bool;
	/**
	 * Flash MX 2004.
	 * Opens the currently selected or specified item in Edit mode.
	 * @param namePath A string that specifies the name of the item. If the item is in a folder, you can specify its name and path using
	 */
	function editItem(?namePath:String) : Bool;
	/**
	 * Expands or collapses the currently selected or specified folder in the library.
	 * @param bExpand A Boolean value: if true, the folder is expanded; if false (the default), the folder is collapsed.
	 * @param bRecurseNestedParents A Boolean value: if true, all the folders within the specified folder are expanded or
	 * @param namePath A string that specifies the name and, optionally, the path of the folder to expand or collapse. If this
	 */
	function expandFolder(bExpand:Bool, ?bRecurseNestedParents:Bool, ?namePath:String) : Bool;
	/**
	 * Flash MX 2004.
	 * Returns the library itemтАЩs index value (zero-based). The library index is flat, so folders are considered part ofthe main index. Folder paths can be used to specify a nested item.
	 * @param namePath A string that specifies the name of the item. If the item is in a folder, you can specify its name and path using
	 */
	function findItemIndex(namePath:String) : Int;
	/**
	 * Flash MX 2004.
	 * Gets the property for the selected item.
	 * @param property A string. For a list of values that you can use as a property parameter, see the Property summary table for
	 */
	function getItemProperty(property:String) : String;
	/**
	 * Flash MX 2004.
	 * Gets the type of object currently selected or specified by a library path.
	 * @param namePath A string that specifies the name of the item. If the item is in a folder, specify its name and path using slash
	 */
	function getItemType(?namePath:String) : ItemType;
	/**
	 * Flash MX 2004.
	 * Gets the array of all currently selected items in the library.
	 */
	function getSelectedItems() : Array<Item>;
	/**
	 * Imports a SWF file into the library as a compiled clip. Unlike File &gt; Import &gt; SWF, this method lets youembed a compiled SWF file inside the library. There is no corresponding user interface functionality, and this methodmust be used with an external library or DLL (see тАЬC-Level ExtensibilityтАЭ on page 528).The SWF file that you are importing must have one top-level movie clip that contains all the content. That movie clipshould have its linkage identifier set to the same value as the linkageName parameter passed to this method.
	 * @param linkageName A string that provides the name of the SWF linkage of the root movie clip.
	 * @param swfData An array of binary SWF data, which comes from an external library or DLL.
	 * @param libName A string that specifies the library name for the created item. If the name is already used, the method creates
	 */
	function importEmbeddedSWF(linkageName:String, swfData:Dynamic, ?libName:String) : Void;
	/**
	 * Flash MX 2004.
	 * Checks to see if a specified item exists in the library.
	 * @param namePath A string that specifies the name of the item. If the item is in a folder, specify its name and path using slash
	 */
	function itemExists(namePath:String) : Bool;
	/**
	 * Flash MX 2004.
	 * An array of item objects in the library.
	 */
	var items : Array<Item>;
	/**
	 * Flash MX 2004.
	 * Moves the currently selected or specified library item to a specified folder. If the folderPath parameter isempty, the items move to the top level.
	 * @param folderPath A string that specifies the path to the folder in the form "FolderName" or "FolderName/FolderName".
	 * @param itemToMove A string that specifies the name of the item to move. If itemToMove is not specified, the currently selected
	 * @param bReplace A Boolean value. If an item with the same name already exists, specifying true for the bReplace parameter
	 */
	function moveToFolder(folderPath:String, ?itemToMove:String, ?bReplace:Bool) : Bool;
	/**
	 * Flash MX 2004.
	 * Creates a new folder with the specified name, or a default name ("untitled folder #") if no folderNameparameter is provided, in the currently selected folder.
	 * @param folderPath A string that specifies the name of the folder to be created. If it is specified as a path, and the path doesnтАЩt
	 */
	function newFolder(?folderPath:String) : Bool;
	/**
	 * Flash MX 2004.
	 * Renames the currently selected library item in the Library panel.
	 * @param name A string that specifies a new name for the library item.
	 */
	function renameItem(name:String) : Bool;
	/**
	 * Flash MX 2004.
	 * Selects or deselects all items in the library.
	 * @param bSelectAll A Boolean value that specifies whether to select or deselect all items in the library. Omit this parameter
	 */
	function selectAll(?bSelectAll:Bool) : Void;
	/**
	 * Flash MX 2004.
	 * Selects a specified library item.
	 * @param namePath A string that specifies the name of the item. If the item is in a folder, you can specify its name and path using
	 * @param bReplaceCurrentSelection A Boolean value that specifies whether to replace the current selection or add the item
	 * @param bSelect A Boolean value that specifies whether to select or deselect an item. The default value is true (select). This
	 */
	function selectItem(namePath:String, ?bReplaceCurrentSelection:Bool, ?bSelect:Bool) : Bool;
	/**
	 * Flash MX 2004.
	 * Deselects all the library items.
	 */
	function selectNone() : Void;
	/**
	 * Flash MX 2004.
	 * Sets the property for all selected library items (ignoring folders).
	 * @param property A string that is the name of the property to set. For a list of properties, see the Property summary table for
	 * @param value The value to assign to the specified property.
	 */
	function setItemProperty(property:String, value:Dynamic) : Void;
	/**
	 * Flash Professional CC.
	 * Property; an array of Library Items that are not used in the document. This is the equivalent of the “Select Unused Items” menu item in the Library panel.
	 */
	var unusedItems : Array<Item>;
	/**
	 * Flash MX 2004.
	 * Updates the specified item.
	 * @param namePath A string that specifies the name of the item. If the item is in a folder, specify its name and path using slash
	 */
	function updateItem(?namePath:String) : Bool;
}