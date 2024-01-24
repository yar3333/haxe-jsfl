package jsfl;

typedef Text =
{>Element,
	/**
	 * Flash MX 2004.
	 * A string that is equivalent to the Name field in the Accessibility panel. Screen readers identify objects byreading the name aloud. This property cannot be used with dynamic text.
	 */
	var accName : String;
	/**
	 * Flash 8.
	 * A float value that specifies the anti-aliasing sharpness of the text. This property controls how crisply the textis drawn; higher values specify sharper (or crisper) text. A value of 0 specifies normal sharpness. This property isavailable only if text.fontRenderingMode is set to customThicknessSharpness.
	 */
	var antiAliasSharpness : Float;
	/**
	 * Flash 8.
	 * A float value that specifies the anti-aliasing thickness of the text. This property controls how thickly the textis drawn, with higher values specifying thicker text. A value of 0 specifies normal thickness. This property is availableonly if text.fontRenderingMode is set to customThicknessSharpness.
	 */
	var antiAliasThickness : Float;
	/**
	 * Flash MX 2004.
	 * A Boolean value. For static text fields, a value of true causes the bounding width to expand to show all text.For dynamic or input text fields, a value of true causes the bounding width and height to expand to show all text.
	 */
	var autoExpand : Bool;
	/**
	 * Flash MX 2004.
	 * A Boolean value. A value of true causes Flash to show a border around text.
	 */
	var border : Bool;
	/**
	 * Flash MX 2004.
	 * A string that is equivalent to the Description field in the Accessibility panel. The description is read by thescreen reader.
	 */
	var description : String;
	/**
	 * Flash MX 2004.
	 * A string that specifies characters to embed. This is equivalent to entering text in the Character Embeddingdialog box.This property works only with dynamic or input text; it generates a warning if used with other text types.Note: Beginning in Flash Professional CS5, font embedding is controlled at the document level instead of the text objectlevel. Use the тАЬfontItem.embeddedCharactersтАЭ on page 280 property instead of the text.embeddedCharacters property.
	 */
	var embeddedCharacters : String;
	/**
	 * Flash MX 2004.
	 * A string that consists of delimited integers that correspond to the items that can be selected in the CharacterEmbedding dialog box. This property works only with dynamic or input text; it is ignored if used with static text.This property corresponds to the XML file in the Configuration/Font Embedding folder.Note: Beginning in Flash Professional CS5, font embedding is controlled at the document level instead of the text objectlevel. Use the тАЬfontItem.embedRangesтАЭ on page 280 property instead of the text.embedRanges property.
	 */
	var embedRanges : String;
	/**
	 * Flash CS4 Professional.
	 * A Boolean value that specifies whether to enable the embedding of variant glyphs (true) or not (false). Thisproperty works only with dynamic or input text; it is ignored if used with static text. The default value is false.Note: Beginning in Flash Professional CS5, font embedding is controlled at the document level instead of the text objectlevel. Use the тАЬfontItem.embedVariantGlyphsтАЭ on page 281 property instead of the text.embedVariantGlyphs property.In Flash Professional CS5, the text.embedVariantGlyphs property no longer has any effect because Flash always embedsvariant glyphs for TLF text and never embeds them for Classic text.
	 */
	var embedVariantGlyphs : Bool;
	/**
	 * Flash Professional CS6.
	 * Property; an array of filters applied to the text element. To modify filter properties, you don’t write to this array directly. Instead, retrieve the array, set the individual properties, and then set the array to reflect the new properties.
	 */
	var filters : Array<Filter>;
	/**
	 * Flash 8.
	 * A string that specifies the rendering mode for the text. This property affects how the text is displayed both onthe Stage and in Flash Player. Acceptable values are described in the following table:Property valueHow text is rendereddeviceRenders the text with device fonts.bitmapRenders aliased text as a bitmap, or as a pixel font would.standardRenders text using the standard anti-aliasing method used by Flash MX 2004. This is the bestsetting to use for animated, very large, or skewed text.advancedRenders text using the advanced anti-aliasing font rendering technology implemented in Flash8, which produces better anti-aliasing and improves readability, especially for small text.customThicknessSharpnessLets you specify custom settings for the sharpness and thickness of the text when using theadvanced anti-aliasing font rendering technology implemented in Flash 8.
	 */
	var fontRenderingMode : FontRenderingMode;
	/**
	 * Flash MX 2004.
	 * Retrieves the attribute specified by the attrName parameter for the text identified by the optional startIndexand endIndex parameters. If the attribute is not consistent for the specified range, Flash returns undefined. If you omitthe optional parameters startIndex and endIndex, the method uses the entire text range. If you specify only startIndex,the range used is a single character at that position. If you specify both startIndex and endIndex, the range starts fromstartIndex and goes up to, but does not include, endIndex.
	 * @param attrName A string that specifies the name of the TextAttrs object property to be returned. For a list of possible values
	 * @param startIndex An integer that is the index of first character. This parameter is optional.
	 * @param endIndex An integer that specifies the end of the range of text, which starts with startIndex and goes up to, but does
	 */
	function getTextAttr(attrName:String, ?startIndex:Int, ?endIndex:Int) : Parameter;
	/**
	 * Flash MX 2004.
	 * Retrieves the specified range of text. If you omit the optional parameters startIndex and endIndex, the wholetext string is returned. If you specify only startIndex, the method returns the string starting at the index location andending at the end of the field. If you specify both startIndex and endIndex, the method returns the string starting fromstartIndex and goes up to, but does not include, endIndex.
	 * @param startIndex An integer that specifies the index (zero-based) of the first character. This parameter is optional.
	 * @param endIndex An integer that specifies the end of the range of text, which starts from startIndex and goes up to, but does
	 */
	function getTextString(?startIndex:Int, ?endIndex:Int) : String;
	/**
	 * Flash MX 2004.
	 * Read-only. An integer that represents the number of characters in the Text object.
	 */
	var length : Int;
	/**
	 * Flash MX 2004.
	 * A string that sets the line type. Acceptable values are "single line", "multiline", "multiline no wrap",and "password".This property works only with dynamic or input text and generates a warning if used with static text. The "password"value works only for input text.
	 */
	var lineType : TextLineType;
	/**
	 * Flash MX 2004.
	 * An integer that specifies the maximum number of characters the user can enter in this Text object.This property works only with input text; if used with other text types, the property generates a warning.
	 */
	var maxCharacters : Int;
	/**
	 * Flash MX 2004.
	 * A string that specifies the orientation of the text field. Acceptable values are "horizontal", "vertical leftto right", and "vertical right to left".This property works only with static text; it generates a warning if used with other text types.
	 */
	var orientation : Orientation;
	/**
	 * Flash MX 2004.
	 * A Boolean value. If the value is true, Flash draws the text as HTML and interprets embedded HTML tags.This property works only with dynamic or input text; it generates a warning if used with other text types.
	 */
	var renderAsHTML : Bool;
	/**
	 * Flash MX 2004.
	 * A Boolean value. If the value is true, the text can be scrolled.This property works only with dynamic or input text; it generates a warning if used with static text.
	 */
	var scrollable : Bool;
	/**
	 * Flash MX 2004.
	 * A Boolean value. If the value is true, the text can be selected.Input text is always selectable. Flash generates a warning when this property is set to false and used with input text.
	 */
	var selectable : Bool;
	/**
	 * Flash MX 2004.
	 * A zero-based integer that specifies the end of a text subselection. For more information, seetext.selectionStart.
	 */
	var selectionEnd : Int;
	/**
	 * Flash MX 2004.
	 * A zero-based integer that specifies the beginning of a text subselection. You can use this property withtext.selectionEnd to select a range of characters. Characters up to, but not including, text.selectionEnd areselected. See text.selectionEnd.тАв  If there is an insertion point or no selection, text.selectionEnd is equal to text.selectionStart.тАв  If text.selectionStart is set to a value greater than text.selectionEnd, text.selectionEnd is set totext.selectionStart, and no text is selected.
	 */
	var selectionStart : Int;
	/**
	 * Flash MX 2004.
	 * Sets the attribute specified by the attrName parameter associated with the text identified by startIndex andendIndex to the value specified by attrValue. This method can be used to change attributes of text that might spanTextRun elements (see TextRun object), or that are portions of existing TextRun elements. Using it may change theposition and number of TextRun elements within this objectтАЩs text.textRuns array (see text.textRuns).If you omit the optional parameters, the method uses the entire Text objectтАЩs character range. If you specify onlystartIndex, the range is a single character at that position. If you specify both startIndex and endIndex, the range startsfrom startIndex and goes up to, but does not include, the character located at endIndex.
	 * @param attrName A string that specifies the name of the TextAttrs object property to change.
	 * @param attrValue The value for the TextAttrs object property.
	 * @param startIndex An integer that is the index (zero-based) of the first character in the array. This parameter is optional.
	 * @param endIndex An integer that specifies the index of the end point in the selected text string, which starts at startIndex and
	 */
	function setTextAttr(attrName:String, attrValue:Dynamic, ?startIndex:Int, ?endIndex:Int) : Void;
	/**
	 * Flash MX 2004.
	 * Changes the text string within this Text object. If you omit the optional parameters, the whole Text object isreplaced. If you specify only startIndex, the specified string is inserted at the startIndex position. If you specify bothstartIndex and endIndex, the specified string replaces the segment of text starting from startIndex up to, but notincluding, endIndex.
	 * @param text A string that consists of the characters to be inserted into this Text object.
	 * @param startIndex An integer that specifies the index (zero-based) of the character in the string where the text will be
	 * @param endIndex An integer that specifies the index of the end point in the selected text string. The new text overwrites the
	 */
	function setTextString(text:String, ?startIndex:Int, ?endIndex:Int) : Void;
	/**
	 * Flash MX 2004.
	 * A string that is equivalent to the Shortcut field in the Accessibility panel. The shortcut is read by the screenreader. This property cannot be used with dynamic text.
	 */
	var shortcut : String;
	/**
	 * Flash MX 2004.
	 * A Boolean value that specifies whether the object is accessible. This is equivalent to the inverse logic of theMake Object Accessible setting in the Accessibility panel. That is, if silent is true, Make Object Accessible isdeselected. If it is false, Make Object Accessible is selected.
	 */
	var silent : Bool;
	/**
	 * Flash MX 2004.
	 * An integer that is equivalent to the Tab Index field in the Accessibility panel. This value lets you determinethe order in which objects are accessed when the user presses the Tab key.
	 */
	var tabIndex : Int;
	/**
	 * Flash MX 2004.
	 * Read-only. An array of TextRun objects (see TextRun object).
	 */
	var textRuns : Array<Text>;
	/**
	 * Flash MX 2004.
	 * A string that specifies the type of text field. Acceptable values are "static", "dynamic", and "input".
	 */
	var textType : TextType;
	/**
	 * Flash MX 2004.
	 * A Boolean value. A value of true causes Flash to draw text using device fonts.
	 */
	var useDeviceFonts : Bool;
	/**
	 * Flash MX 2004.
	 * A string that contains the name of the variable associated with the Text object. This property works only withdynamic or input text; it generates a warning if used with other text types.This property is supported only in ActionScript 1.0 and ActionScript 2.0.
	 */
	var variableName : String;
}

enum abstract FontRenderingMode(String) {
	/**
	 * Renders the text with device fonts.
	 */
	var Device = "device";
	/**
	 * Renders aliased text as a bitmap, or as a pixel font would.
	 */
	var Bitmap = "bitmap";
	/**
	 * Renders text using the standard anti-aliasing method used by Flash MX 2004. This is the best setting to use for animated, very large, or skewed text.
	 */
	var Standard = "standard";
	/**
	 * Renders text using the advanced anti-aliasing font rendering technology implemented in Flash 8, which produces better anti-aliasing and improves readability, especially for small text.
	 */
	var Advanced = "advanced";
	/**
	 * Lets you specify custom settings for the sharpness and thickness of the text when using the advanced anti-aliasing font rendering technology implemented in Flash 8.
	 */
	var CustomThicknessSharpness = "customThicknessSharpness";
}

enum abstract Orientation(String) {
	var Horizontal = "horizontal";
	var VerticalLeftToTight = "vertical left to right";
	var VerticalRightToLeft = "vertical right to left";
}

enum abstract TextLineType(String) {
	var Multiline = "multiline";
	var MultilineNoWrap = "multiline no wrap";
	var Password = "password";
	var SingleLine = "single line";
}

enum abstract TextType(String) {
	var Static = "static";
	var Dynamic = "dynamic";
	var Input = "input";
}

