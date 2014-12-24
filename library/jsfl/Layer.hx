package jsfl;

typedef Layer =
{
	/**
	 * The color assigned to outline the layer, in one of the following formats:тАв  A string in the format "#RRGGBB" or "#RRGGBBAA"тАв  A hexadecimal number in the format 0xRRGGBBтАв  An integer that represents the decimal equivalent of a hexadecimal numberThis property is equivalent to the Outline color setting in the Layer Properties dialog box.
	 */
	var color : Dynamic;
	/**
	 * Read-only. An integer that specifies the number of frames in the layer.
	 */
	var frameCount : Int;
	/**
	 * Read-only. An array of Frame objects (see Frame object).
	 */
	var frames : Array<Frame>;
	/**
	 * An integer that specifies the percentage layer height; equivalent to the Layer height value in the LayerProperties dialog box. Acceptable values represent percentages of the default height: 100, 200, or 300.
	 */
	var height : Int;
	/**
	 * A string that specifies the current use of the layer; equivalent to the Type setting in the Layer Properties dialogbox. Acceptable values are "normal", "guide", "guided", "mask", "masked", and "folder".
	 */
	var layerType : String;
	/**
	 * A Boolean value that specifies the locked status of the layer. If set to true, the layer is locked. The defaultvalue is false.
	 */
	var locked : Bool;
	/**
	 * A string that specifies the name of the layer.
	 */
	var name : String;
	/**
	 * A Boolean value that specifies the status of outlines for all objects in the layer. If set to true, all objects in thelayer appear only with outlines. If false, objects appear as they were created.
	 */
	var outline : Bool;
	/**
	 * A Layer object that represents the layerтАЩs containing folder, guiding, or masking layer. The parent layer mustbe a folder, guide, or mask layer that precedes the layer, or the parentLayer of the preceding or following layer. Settingthe layerтАЩs parentLayer does not move the layerтАЩs position in the list; trying to set a layerтАЩs parentLayer to a layerthat would require moving it has no effect. Uses null for a top-level layer.
	 */
	var parentLayer : Layer;
	/**
	 * A Boolean value that specifies whether the layerтАЩs objects on the Stage are shown or hidden. If set to true, allobjects in the layer are visible; if false, they are hidden. The default value is true.
	 */
	var visible : Bool;
}