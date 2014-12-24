package jsfl;

typedef TextAttrs =
{
	/**
	 * A Boolean value that specifies that Flash should draw the text using a method optimized for increasing thelegibility of small text.
	 */
	var aliasText : Bool;
	/**
	 * A string that specifies paragraph justification. Acceptable values are "left", "center", "right", and"justify".
	 */
	var alignment : String;
	/**
	 * A Boolean value that determines whether Flash uses (true) or ignores (false) pair kerning information inthe font(s) when it kerns the text.
	 */
	var autoKern : Bool;
	/**
	 * A Boolean value. A value of true causes text to appear with the bold version of the font.
	 */
	var bold : Bool;
	/**
	 * A string that determines the baseline for the text. Acceptable values are "normal", "subscript", and"superscript". This property applies only to static text.
	 */
	var characterPosition : String;
	/**
	 * An integer that represents the space between characters. Acceptable values are -60 through 60.This property applies only to static text; it generates a warning if used with other text types.
	 */
	var characterSpacing : Int;
	/**
	 * A string that represents the name of the font, such as "Arial".
	 */
	var face : String;
	/**
	 * The color of the fill, in one of the following formats:тАв  A string in the format "#RRGGBB" or "#RRGGBBAA"тАв  A hexadecimal number in the format 0xRRGGBBтАв  An integer that represents the decimal equivalent of a hexadecimal number
	 */
	var fillColor : Dynamic;
	/**
	 * An integer that specifies paragraph indentation. Acceptable values are -720 through 720.
	 */
	var indent : Int;
	/**
	 * A Boolean value. A value of true causes text to appear with the italic version of the font.
	 */
	var italic : Bool;
	/**
	 * An integer that specifies the paragraphтАЩs left margin. Acceptable values are 0 through 720.
	 */
	var leftMargin : Int;
	/**
	 * An integer that represents the space between characters. Acceptable values are -60 through 60.This property applies only to static text; it generates a warning if used with other text types.
	 */
	var letterSpacing : Int;
	/**
	 * An integer that specifies the line spacing (leading) of the paragraph. Acceptable values are -360 through 720.
	 */
	var lineSpacing : Int;
	/**
	 * An integer that specifies the paragraphтАЩs right margin. Acceptable values are 0 through 720.
	 */
	var rightMargin : Int;
	/**
	 * A Boolean value. A value of true causes Flash to rotate the characters of the text 90┬║. The default value isfalse. This property applies only to static text with a vertical orientation; it generates a warning if used with other texttypes.
	 */
	var rotation : Bool;
	/**
	 * An integer that specifies the size of the font.
	 */
	var size : Int;
	/**
	 * A string that represents the target property of the text field. This property works only with static text.
	 */
	var target : String;
	/**
	 * A string that represents the URL property of the text field. This property works only with static text.
	 */
	var url : String;
}