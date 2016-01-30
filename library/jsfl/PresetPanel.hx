package jsfl;

typedef PresetPanel =
{
	/**
	 * Flash CS4 Professional.
	 * If a single motion tween is currently selected on the Stage, adds that motion to the Motion Presets panel inthe specified folder with the specified name. The path specified in namePath must exist in the panel.If a preset matching namePath exists, this method has no effect, and returns false.If you donтАЩt pass a value for namePath, the item is added to the Custom Presets folder with the name тАЬCustom presetn,тАЭ where n is incremented each time you add an item in this fashion.
	 * @param namePath A string that specifies the path and name of the item to add to the Motion Presets panel. This parameter is
	 */
	function addNewItem(namePath:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Applies the specified or currently selected preset to the currently selected item on the Stage. The item must bea motion tween, a symbol, or an item that can be converted to a symbol. If the item is a motion tween, its currentmotion is replaced with the selected preset without requesting user confirmation.This method fails in the following situations:тАв  The path you specify as presetPath doesnтАЩt exist.тАв  You donтАЩt pass a value for presetPath and no preset is selected.тАв  You donтАЩt pass a value for presetPath and multiple presets are selected.тАв  The selected item on the Stage is not a symbol and canтАЩt be converted to a symbol.
	 * @param presetPath A string that specifies the full path and name of the preset to be applied, as it appears in the Motion
	 */
	function applyPreset(presetPath:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Deletes the specified folder and any of its subfolders from the folder tree of the Motion Presets panel. Anypresets in the folders are also deleted. You canтАЩt delete folders from the Default Presets folder.If you donтАЩt pass a value for folderPath, any folders that are currently selected are deleted.Note: Folders are deleted without requesting user confirmation, and there is no way to undo this action.
	 * @param folderPath A string that specifies the folder to delete from the Motion Presets panel. This parameter is optional.
	 */
	function deleteFolder(?folderPath:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Deletes the specified preset from the Motion Presets panel. If you donтАЩt pass a value for namePath, any presetsthat are currently selected are deleted. You canтАЩt delete items from the Default Presets folder.Note: Items are deleted without requesting user confirmation, and there is no way to undo this action.
	 * @param namePath A string that specifies the path and name of the item to delete from the Motion Presets panel. This
	 */
	function deleteItem(namePath:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Expands or collapses the currently selected folder or folders in the Motion Presets panel. To expand orcollapse folders other than the folders that are currently selected, pass a value for folderPath.
	 * @param bExpand A Boolean value that specifies whether to expand the folder (true) or collapse it (false). This parameter is
	 * @param bRecurse A Boolean value that specifies whether to expand or collapse the folderтАЩs subfolders (true) or not false).
	 * @param folderPath A string that specifies the path to the folder to expand or collapse. This parameter is optional.
	 */
	function expandFolder(bExpand:Bool, ?bRecurse:Bool, ?folderPath:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Exports the currently selected or the specified preset to an XML file. Only presets can be exported; the methodfails if you try to export a folder. This method also fails if you try to overwrite a file on disk.If you donтАЩt specify a filename as part of fileURI (that is, if the last character of fileURI is a slash (/)), the exported fileis saved with the same name as the preset being exported. If you donтАЩt specify a value for namePath, the currentlyselected preset is exported. See the example below.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the path and optionally a filename for the exported file. See
	 * @param namePath A string that specifies the path and name of the item to select from the Motion Presets panel. This
	 */
	function exportItem(?fileURI:String, namePath:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Returns an integer that represents the index location of an item in the Motion Presets panel.
	 * @param presetName A string that specifies the name of the preset for which the index value is returned. This parameter is
	 */
	function findItemIndex(presetName:String) : Int;
	/**
	 * Flash CS4 Professional.
	 * Returns an array of presetItem objects corresponding to the currently selected items in the Motion Presetspanel (see presetItem object). Each item in the array represents either a folder or a preset.
	 */
	function getSelectedItems() : Array<PresetItem>;
	/**
	 * Flash CS4 Professional.
	 * Adds a preset to the Motion Presets panel from a specified XML file. The path specified in namePath mustexist in the panel.To create XML files that can be imported, use presetPanel.exportItem().If you donтАЩt pass a value for namePath, the imported preset is placed in the Custom Presets folder and given the samename as the imported file (without the XML extension).
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the XML file to be imported as a preset in the Motion
	 * @param namePath A string that specifies in which folder to place the imported file and what to name it. This parameter is
	 */
	function importItem(fileURI:String, namePath:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * An array of presetItem objects in the Motion Presets panel (see presetItem object). Each item in the arrayrepresents either a folder or a preset.
	 */
	var items : Array<PresetItem>;
	/**
	 * Flash CS4 Professional.
	 * Moves the specified item to the specified folder.If you pass an empty string ("") for folderPath, the items are moved to the Custom Presets folder. If you donтАЩt pass avalue for namePath, the currently selected items are moved.You canтАЩt move items to or from the Default Presets folder.
	 * @param folderPath A string that specifies the path to the folder in the Motion Presets panel to which the item or items are
	 * @param namePath A string that specifies the path and name of the item to move. This parameter is optional.
	 */
	function moveToFolder(folderPath:String, ?namePath:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Creates a folder in the folder tree of the Motion Presets panel. You can create only one new folder level withthis method. That is, if you pass тАЬCustom Presets/My First Folder/My Second Folder" for folderPath, тАЬCustomPresets/My First FolderтАЬ must exist in the folder tree.If you donтАЩt pass a value for folderPath, a folder named тАЬUntitled folder nтАЭ is created at the first level below тАЬCustomPresets,тАЭ where n is incremented each time a folder is added in this fashion.Note: You canтАЩt add folders to the Default Presets folder.
	 * @param folderPath A string that specifies where to add a new folder in the Motion Presets panel, and the name of the new
	 */
	function newFolder(folderPath:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Renames the currently selected preset or folder to a specified name. This method succeeds only if a singlepreset or folder in the Custom Presets folder is selected. This method fails in the following situations:тАв  No item is selected.тАв  Multiple items are selected.тАв  The selected item is in the Default Presets folder.тАв  An item named newName exists in the same location as the selected item.
	 * @param newName A string that specifies the new name for the preset or folder.
	 */
	function renameItem(newName:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Selects or deselects an item in the Motion Presets panel, optionally replacing any items currently selected.
	 * @param namePath A string that specifies the path and name of the item to select from the Motion Presets panel.
	 * @param bReplaceCurrentSelection A Boolean value that specifies whether the specified item replaces any current selection
	 * @param bSelect A Boolean value that specifies whether to select the item (true) or deselect the item (false). This parameter
	 */
	function selectItem(namePath:String, ?bReplaceCurrentSelection:Bool, ?bSelect:Bool) : Bool;
}