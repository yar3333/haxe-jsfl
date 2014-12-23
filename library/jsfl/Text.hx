package jsfl;

typedef Text =
{>Element,
	var accName : String;
	var antiAliasSharpness : Float;
	var antiAliasThickness : Float;
	var autoExpand : Bool;
	var border : Bool;
	var description : String;
	var embeddedCharacters : String;
	var embedRanges : String;
	var embedVariantGlyphs : Bool;
	var fontRenderingMode : String;
	var length : Int;
	var lineType : String;
	var maxCharacters : Int;
	var orientation : String;
	var renderAsHTML : Bool;
	var scrollable : Bool;
	var selectable : Bool;
	var selectionEnd : Int;
	var selectionStart : Int;
	var shortcut : String;
	var silent : Bool;
	var tabIndex : Int;
	var textRuns : Array<Text>;
	var textType : String;
	var useDeviceFonts : Bool;
	var variableName : String;
	
	function getTextAttr(attrName:String, ?startIndex:Int, ?endIndex:Int) : Parameter;
	function getTextString(?startIndex:Int, ?endIndex:Int) : String;
	function setTextAttr(attrName:String, attrValue:Dynamic, ?startIndex:Int, ?endIndex:Int) : Void;
	function setTextString(text:String, ?startIndex:Int, ?endIndex:Int) : Void;
}