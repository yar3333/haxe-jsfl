package jsfl;

typedef PresetItem =
{
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a Boolean value that specifies whether the item is installed along with Flash (true) or is a customitem that you or someone else has created (false). If this value is true, you can consider it a тАЬread-onlyтАЭ item; it canтАЩtbe moved, deleted, or have any similar operations applied to it.
	 */
	var isDefault : Bool;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a Boolean value that specifies whether the item in the Motion Presets panel is a folder (true) ora preset (false).
	 */
	var isFolder : Bool;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: an integer that specifies the level of the item in the folder structure of the Motion Presets panel.The Default Folder and Custom Presets folder are level 0.
	 */
	var level : Int;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a string that represents the name of the preset or folder, without path information.
	 */
	var name : String;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: specifies whether a folder in the Motion Presets panel is currently expanded (true) or not(false).This property is true if the item is not a folder. To determine if an item is a folder or a preset, use presetItem.isFolder.
	 */
	var open : Bool;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a string that represents the path to the item in the Motion Presets panel folder tree, and the itemname.
	 */
	var path : String;
}