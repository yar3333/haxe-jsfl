package jsfl;

typedef Layer =
{
	/**
	 * Flash Pro CS6.
	 * Read-only property; a string value indicating the animation type of the layer. Possible values include: "none", "motion object", "IK pose".
	 */
	var animationType : AnimationType;
	/**
	 * Flash MX 2004.
	 * The color assigned to outline the layer, in one of the following formats:тАв  A string in the format "#RRGGBB" or "#RRGGBBAA"тАв  A hexadecimal number in the format 0xRRGGBBтАв  An integer that represents the decimal equivalent of a hexadecimal numberThis property is equivalent to the Outline color setting in the Layer Properties dialog box.
	 */
	var color : Dynamic;
	/**
	 * Flash MX 2004.
	 * Read-only. An integer that specifies the number of frames in the layer.
	 */
	var frameCount : Int;
	/**
	 * Flash MX 2004.
	 * Read-only. An array of Frame objects (see Frame object).
	 */
	var frames : Array<Frame>;
	/**
	 * Flash MX 2004.
	 * An integer that specifies the percentage layer height; equivalent to the Layer height value in the LayerProperties dialog box. Acceptable values represent percentages of the default height: 100, 200, or 300.
	 */
	var height : Int;
	/**
	 * Flash MX 2004.
	 * A string that specifies the current use of the layer; equivalent to the Type setting in the Layer Properties dialogbox. Acceptable values are "normal", "guide", "guided", "mask", "masked", and "folder".
	 */
	var layerType : LayerType;
	/**
	 * Flash MX 2004.
	 * A Boolean value that specifies the locked status of the layer. If set to true, the layer is locked. The defaultvalue is false.
	 */
	var locked : Bool;
	/**
	 * Flash MX 2004.
	 * A string that specifies the name of the layer.
	 */
	var name : String;
	/**
	 * Flash MX 2004.
	 * A Boolean value that specifies the status of outlines for all objects in the layer. If set to true, all objects in thelayer appear only with outlines. If false, objects appear as they were created.
	 */
	var outline : Bool;
	/**
	 * Flash MX 2004.
	 * A Layer object that represents the layerтАЩs containing folder, guiding, or masking layer. The parent layer mustbe a folder, guide, or mask layer that precedes the layer, or the parentLayer of the preceding or following layer. Settingthe layerтАЩs parentLayer does not move the layerтАЩs position in the list; trying to set a layerтАЩs parentLayer to a layerthat would require moving it has no effect. Uses null for a top-level layer.
	 */
	var parentLayer : Layer;
	/**
	 * Flash MX 2004.
	 * A Boolean value that specifies whether the layerтАЩs objects on the Stage are shown or hidden. If set to true, allobjects in the layer are visible; if false, they are hidden. The default value is true.
	 */
	var visible : Bool;
}

@:enum
abstract LayerType(String) {
	var Normal = "normal";
	var Guide = "guide";
	var Guided = "guided";
	var Mask = "mask";
	var Masked = "masked";
	var Folder = "folder";
}

@:enum
abstract AnimationType(String) {
	var None = "none";
	var MotionObject = "motion object";
	var IKPose = "IK pose";
}