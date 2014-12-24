package jsfl;

typedef Library =
{
	/**
	 * An array of item objects in the library.
	 */
	var items : Array<Item>;
	
	/**
	 * Adds the current or specified item to the Stage at the specified position.
	 * @position A point that specifies the x,y position of the center of the item on the Stage.
	 * @namePath A string that specifies the name of the item. If the item is in a folder, you can specify its name and path using
	 */
	function addItemToDocument(position:JSFLPoint, ?namePath:String) : Bool;
	/**
	 * Creates a new item of the specified type in the Library panel and sets the new item to the currently selecteditem. For more information on importing items into the library, including items such as sounds, seedocument.importFile().
	 * @type A string that specifies the type of item to create. The only acceptable values for type are "video", "movie clip",
	 * @namePath A string that specifies the name of the item to be added. If the item is in a folder, specify its name and path
	 */
	function addNewItem(type:String, ?namePath:String) : Bool;
	/**
	 * Deletes the current items or a specified item from the Library panel. This method can affect multiple items ifseveral are selected.
	 * @namePath A string that specifies the name of the item to be deleted. If the item is in a folder, you can specify its name
	 */
	function deleteItem(?namePath:String) : Bool;
	/**
	 * Makes a copy of the currently selected or specified item. The new item has a default name (such as item copy)and is set as the currently selected item. If more than one item is selected, the command fails.
	 * @namePath A string that specifies the name of the item to duplicate. If the item is in a folder, you can specify its name
	 */
	function duplicateItem(?namePath:String) : Bool;
	/**
	 * Opens the currently selected or specified item in Edit mode.
	 * @namePath A string that specifies the name of the item. If the item is in a folder, you can specify its name and path using
	 */
	function editItem(?namePath:String) : Bool;
	/**
	 * Expands or collapses the currently selected or specified folder in the library.
	 * @bExpand A Boolean value: if true, the folder is expanded; if false (the default), the folder is collapsed.
	 * @bRecurseNestedParents A Boolean value: if true, all the folders within the specified folder are expanded or
	 * @namePath A string that specifies the name and, optionally, the path of the folder to expand or collapse. If this
	 */
	function expandFolder(bExpand:Bool, ?bRecurseNestedParents:Bool, ?namePath:String) : Bool;
	/**
	 * Returns the library itemтАЩs index value (zero-based). The library index is flat, so folders are considered part ofthe main index. Folder paths can be used to specify a nested item.
	 * @namePath A string that specifies the name of the item. If the item is in a folder, you can specify its name and path using
	 */
	function findItemIndex(namePath:String) : Int;
	/**
	 * Gets the property for the selected item.
	 * @property A string. For a list of values that you can use as a property parameter, see the Property summary table for
	 */
	function getItemProperty(property:String) : String;
	/**
	 * Gets the type of object currently selected or specified by a library path.
	 * @namePath A string that specifies the name of the item. If the item is in a folder, specify its name and path using slash
	 */
	function getItemType(?namePath:String) : String;
	/**
	 * Gets the array of all currently selected items in the library.
	 */
	function getSelectedItems() : Array<Item>;
	/**
	 * Imports a SWF file into the library as a compiled clip. Unlike File &gt; Import &gt; SWF, this method lets youembed a compiled SWF file inside the library. There is no corresponding user interface functionality, and this methodmust be used with an external library or DLL (see тАЬC-Level ExtensibilityтАЭ on page 528).The SWF file that you are importing must have one top-level movie clip that contains all the content. That movie clipshould have its linkage identifier set to the same value as the linkageName parameter passed to this method.
	 * @linkageName A string that provides the name of the SWF linkage of the root movie clip.
	 * @swfData An array of binary SWF data, which comes from an external library or DLL.
	 * @libName A string that specifies the library name for the created item. If the name is already used, the method creates
	 */
	function importEmbeddedSWF(linkageName:String, swfData:Dynamic, ?libName:String) : Void;
	/**
	 * Checks to see if a specified item exists in the library.
	 * @namePath A string that specifies the name of the item. If the item is in a folder, specify its name and path using slash
	 */
	function itemExists(namePath:String) : Bool;
	/**
	 * Moves the currently selected or specified library item to a specified folder. If the folderPath parameter isempty, the items move to the top level.
	 * @folderPath A string that specifies the path to the folder in the form "FolderName" or "FolderName/FolderName".
	 * @itemToMove A string that specifies the name of the item to move. If itemToMove is not specified, the currently selected
	 * @bReplace A Boolean value. If an item with the same name already exists, specifying true for the bReplace parameter
	 */
	function moveToFolder(folderPath:String, ?itemToMove:String, ?bReplace:Bool) : Bool;
	/**
	 * Creates a new folder with the specified name, or a default name ("untitled folder #") if no folderNameparameter is provided, in the currently selected folder.
	 * @folderPath A string that specifies the name of the folder to be created. If it is specified as a path, and the path doesnтАЩt
	 */
	function newFolder(?folderPath:String) : Bool;
	/**
	 * Renames the currently selected library item in the Library panel.
	 * @name A string that specifies a new name for the library item.
	 */
	function renameItem(name:String) : Bool;
	/**
	 * Selects or deselects all items in the library.
	 * @bSelectAll A Boolean value that specifies whether to select or deselect all items in the library. Omit this parameter
	 */
	function selectAll(?bSelectAll:Bool) : Void;
	/**
	 * Selects a specified library item.
	 * @namePath A string that specifies the name of the item. If the item is in a folder, you can specify its name and path using
	 * @bReplaceCurrentSelection A Boolean value that specifies whether to replace the current selection or add the item
	 * @bSelect A Boolean value that specifies whether to select or deselect an item. The default value is true (select). This
	 */
	function selectItem(namePath:String, ?bReplaceCurrentSelection:Bool, ?bSelect:Bool) : Bool;
	/**
	 * Deselects all the library items.
	 */
	function selectNone() : Void;
	/**
	 * Sets the property for all selected library items (ignoring folders).
	 * @property A string that is the name of the property to set. For a list of properties, see the Property summary table for
	 * @value The value to assign to the specified property.
	 */
	function setItemProperty(property:String, value:Dynamic) : Void;
	/**
	 * Updates the specified item.
	 * @namePath A string that specifies the name of the item. If the item is in a folder, specify its name and path using slash
	 */
	function updateItem(?namePath:String) : Bool;
}