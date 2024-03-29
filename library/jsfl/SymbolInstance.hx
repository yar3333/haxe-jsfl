package jsfl;
import jsfl.SymbolItem.SymbolType;

typedef SymbolInstance =
{>Instance,
	/**
	 * Flash MX 2004.
	 * A string that is equivalent to the Name field in the Accessibility panel. Screen readers identify objects byreading the name aloud. This property is not available for graphic symbols.
	 */
	var accName : String;
	/**
	 * Flash MX 2004. Dropped in Flash Professional CC.
	 * A string that specifies the actions assigned to the symbol. This applies only to movie clip and button instances.For a graphic symbol instance, the value returns undefined.
	 */
	var actionScript : String;
	/**
	 * Flash CS5.5 Professional.
	 * A string that specifies the matte color when 24 bit mode is selected for the instance. This is a string inhexadecimal #rrggbb format or an integer containing the value.
	 */
	var backgroundColor : String;
	/**
	 * Flash CS5.5 Professional.
	 * A string that sets the display type for the symbol.Acceptable values include:тАвтАЬnoneтАЭтАвтАЬcacheтАЭ - sets the symbol to be cached as a bitmap by Flash Player at runtime.тАвтАЬexportтАЭ - sets the symbol to be exported as a bitmap when the SWF is compiled.The older тАЬsymbolInstance.cacheAsBitmapтАЭ on page 419 property is similar to this property, but it offers fewerchoices since it's a boolean. In the future, the cacheAsBitmap property may be deprecated, so users should switch tothis new property. The true/false options in the boolean cacheAsBitmap property are the same as the "cache" / "none"values for this new property.
	 */
	var bitmapRenderMode : BitmapRenderMode;
	/**
	 * Flash 8.
	 * A string that specifies the blending mode to be applied to a movie clip symbol. Acceptable values are"normal", "layer", "multiply", "screen", "overlay", "hardlight", "lighten", "darken", "difference","add", "subtract", "invert", "alpha", and "erase".
	 */
	var blendMode : BlendMode;
	/**
	 * Flash Professional CC.
	 * Read-only property; returns the value set in the color effect Property Inspector for brightness (percentage between -100 and 100) when colorMode == 'brightness';. Error if colorMode is a different setting.
	 */
	var brightness : Int;
	/**
	 * Flash MX 2004.
	 * A string that, for button symbols only, sets the same property as the pop-up menu for Track As Button orTrack As Menu Item in the Property inspector. For other types of symbols, this property is ignored. Acceptable valuesare "button" or "menu".
	 */
	var buttonTracking : ButtonTracking;
	/**
	 * Flash 8.
	 * A Boolean value that specifies whether run-time bitmap caching is enabled.Note: Starting w/ Flash Professional CS5.5, users should switch to using the тАЬsymbolInstance.bitmapRenderModeтАЭon page 417 property instead of this property.
	 */
	var cacheAsBitmap : Bool;
	/**
	 * Flash MX 2004.
	 * An integer that is part of the color transformation for the instance, specifying the Advanced Effect Alphasettings. This property is equivalent to using the Color &gt; Advanced setting in the Property inspector and adjusting thecontrols on the right of the dialog box. This value either reduces or increases the tint and alpha values by a constantamount. This value is added to the current value. This property is most useful if used withsymbolInstance.colorAlphaPercent. Allowable values are from -255 to 255.
	 */
	var colorAlphaAmount : Int;
	/**
	 * Flash MX 2004.
	 * An integer that specifies part of the color transformation for the instance. This property is equivalent to usingthe Color &gt; Advanced setting in the instance Property inspector (the percentage controls on the left of the dialog box).This value changes the tint and alpha values to a specified percentage. Allowable values are from -100 to 100. See alsosymbolInstance.colorAlphaAmount.
	 */
	var colorAlphaPercent : Float;
	/**
	 * Flash MX 2004.
	 * An integer that is part of the color transformation for the instance. This property is equivalent to using theColor &gt; Advanced setting in the instance Property inspector. Allowable values are from -255 to 255.
	 */
	var colorBlueAmount : Int;
	/**
	 * Flash MX 2004.
	 * An integer that is part of the color transformation for the instance. This property is equivalent to using theColor &gt; Advanced setting in the instance Property inspector (the percentage controls on the left of the dialog box).This value sets the blue values to a specified percentage. Allowable values are from -100 to 100.
	 */
	var colorBluePercent : Float;
	/**
	 * Flash MX 2004.
	 * An integer that is part of the color transformation for the instance. This property is equivalent to using theColor &gt; Advanced setting in the instance Property inspector. Allowable values are from -255 to 255.
	 */
	var colorGreenAmount : Int;
	/**
	 * Flash MX 2004.
	 * Part of the color transformation for the instance. This property is equivalent to using the Color &gt; Advancedsetting in the instance Property inspector (the percentage controls on the left of the dialog box). This value sets thegreen values by a specified percentage. Allowable values are from -100 to 100.
	 */
	var colorGreenPercent : Float;
	/**
	 * Flash MX 2004.
	 * A string that specifies the color mode as identified in the symbol Property inspector Color pop-up menu.Acceptable values are "none", "brightness", "tint", "alpha", and "advanced".
	 */
	var colorMode : ColorMode;
	/**
	 * Flash MX 2004.
	 * An integer that is part of the color transformation for the instance. This property is equivalent to using theColor &gt; Advanced setting in the instance Property inspector. Allowable values are from -255 to 255.
	 */
	var colorRedAmount : Int;
	/**
	 * Flash MX 2004.
	 * Part of the color transformation for the instance. This property is equivalent to using the Color &gt; Advancedsetting in the instance Property inspector (the percentage controls on the left of the dialog box). This value sets the redvalues to a specified percentage. Allowable values are from -100 to 100.
	 */
	var colorRedPercent : Float;
	/**
	 * Flash MX 2004.
	 * A string that is equivalent to the Description field in the Accessibility panel. The description is read by thescreen reader. This property is not available for graphic symbols.
	 */
	var description : String;
	/**
	 * Flash 8.
	 * An array of Filter objects (see Filter object). To modify filter properties, you donтАЩt write to this array directly.Instead, retrieve the array, set the individual properties, and then set the array to reflect the new properties.
	 */
	var filters : Array<Filter>;
	/**
	 * Flash MX 2004.
	 * A zero-based integer that specifies the first frame to appear in the timeline of the graphic. This propertyapplies only to graphic symbols and sets the same property as the First field in the Property inspector. For other typesof symbols, this property is undefined.
	 */
	var firstFrame : Int;
	/**
	 * Flash MX 2004.
	 * A Boolean value that enables and disables the accessibility of the objectтАЩs children. This property is equivalentto the inverse logic of the Make Child Objects Accessible setting in the Accessibility panel. For example, ifforceSimple is true, it is the same as the Make Child Object Accessible option being unchecked. If forceSimple isfalse, it is the same as the Make Child Object Accessible option being checked.This property is available only for MovieClip objects.
	 */
	var forceSimple : Bool;
	/**
	 * Flash Pro CS6.
	 * Read-only property; a boolean value that indicates whether the symbol instance contains a 3D matrix (transform).
	 */
	var is3D : Bool;
	/**
	 * Flash MX 2004.
	 * A string that, for graphic symbols, sets the same property as the Loop pop-up menu in the Property inspector.For other types of symbols, this property is undefined. Acceptable values are "loop", "play once", and "singleframe" to set the graphicтАЩs animation accordingly.
	 */
	var loop : LoopMode;
	/**
	 * Flash MX 2004.
	 * A string that is equivalent to the shortcut key associated with the symbol. This property is equivalent to theShortcut field in the Accessibility panel. This key is read by the screen readers. This property is not available for graphicsymbols.
	 */
	var shortcut : String;
	/**
	 * Flash MX 2004.
	 * A Boolean value that enables or disables the accessibility of the object. This property is equivalent to theinverse logic of the Make Object Accessible setting in the Accessibility panel. For example, if silent is true, it is thesame as the Make Object Accessible option being unchecked. If silent is false, it is the same as the Make ObjectAccessible option being checked.This property is not available for graphic objects.
	 */
	var silent : Bool;
	/**
	 * Flash MX 2004.
	 * A string that specifies the type of symbol. This property is equivalent to the value for Behavior in the CreateNew Symbol and Convert To Symbol dialog boxes. Acceptable values are "button", "movie clip", and "graphic".
	 */
	var symbolType : SymbolType;
	/**
	 * Flash MX 2004.
	 * An integer that is equivalent to the Tab index field in the Accessibility panel. Creates a tab order in whichobjects are accessed when the user presses the Tab key. This property is not available for graphic symbols.
	 */
	var tabIndex : Int;
	/**
	 * Flash Professional CC.
	 * Read-only property; when the Color Effect Property Inspector is using style tint (colorMode == 'tint'), return the color applied to the tint. Otherwise using this property results in an error.
	 * TODO: check type
	 */
	var tintColor : Dynamic;
	/**
	 * Flash Professional CC.
	 * Read-only property; when the Color Effect Property Inspector is using style tint (colorMode == 'tint'), then return the tint percentage from -100 to 100. Otherwise using this property results in an error.
	 * TODO: check type
	 */
	var tintPercent : Dynamic;
	/**
	 * Flash CS5.5 Professional.
	 * A boolean value that indicates whether to use 24 bit mode (true) or 32 bit mode with alpha (false) for theinstance. If true, the backgroundColor specified for the instance is used.
	 */
	var usesBackgroundColor : Bool;
	/**
	 * Flash CS5.5 Professional.
	 * A boolean value that sets the Visible property of an object to on (true) or off (false).
	 */
	var visible : Bool;
}

enum abstract BitmapRenderMode(String) {
	var None = "none";
	var Cache = "cache";
	var Export = "export";
}

enum abstract BlendMode(String) {
	var Add = "add";
	var Alpha = "alpha";
	var Darken = "darken";
	var Difference = "difference";
	var Erase = "erase";
	var Hardlight = "hardlight";
	var Invert = "invert";
	var Layer = "layer";
	var Lighten = "lighten";
	var Multiply = "multiply";
	var Normal = "normal";
	var Overlay = "overlay";
	var Screen = "screen";
	var Subtract = "subtract";
}

enum abstract ButtonTracking(String) {
	var Button = "button";
	var Menu = "menu";
}

enum abstract ColorMode(String) {
	var Advanced = "advanced";
	var Alpha = "alpha";
	var Brightness = "brightness";
	var Node = "none";
	var Tint = "tint";
}

enum abstract LoopMode(String) {
	var Loop = "loop";
	var PlayOnce = "play once";
	var SingleFrame = "single frame";
}