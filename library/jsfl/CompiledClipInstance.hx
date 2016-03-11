package jsfl;
import jsfl.SymbolInstance.BlendMode;
import jsfl.SymbolInstance.ColorMode;

typedef CompiledClipInstance =
{>Instance,
	/**
	 * Flash MX 2004.
	 * A string that is equivalent to the Name field in the Accessibility panel. Screen readers identify objects byreading the name aloud.
	 */
	var accName : String;
	/**
	 * Flash MX 2004. Dropped in Flash Professional CC.
	 * A string that represents the ActionScript for this instance; equivalent to symbolInstance.actionScript.
	 */
	var actionScript : String;
	/**
	 * Flash ProfessionalCC.
	 * Property; a string that specifies the matte color when Opaque is selected. This is a string in hexadecimal #rrggbb format or an integer containg the value.
	 */
	var backgroundColor : String;
	/**
	 * Flash Professional CC.
	 * Property; a string that specifies the blend mode. Valid blend modes are: normal, layer, darken, multiply, lighten, screen, overlay, hardlight, add, subtract, difference, invert, alpha, and erase.
	 */
	var blendMode : BlendMode;
	/**
	 * Flash Professional CC.
	 * Read-only property; an int that contains the value set in the Color Effect Property Inspector for brightness when colorMode == 'brightness'. Specify a percentage between -100 and 100. Returns an error if colorMode is a different setting.
	 */
	var brightness : Int;
	/**
	 * Flash Professional CC.
	 * Property; a boolean that indicates whether to cache bitmaps. (Equivalent to Use runtime bitmap caching in the Property Inspector). The default is false.
	 */
	var cacheAsBitmap : Bool;
	/**
	 * Flash Professional CC.
	 * Property; an int that reduces or increases the tint and alpha values by a constant amount. This value is added to the current value. This setting is most useful if used in conjunction with colorAlphaPercent. Valid values are -255 to 255.
	 * 
	 * This setting is the same as selecting Color > Advanced in the Instance Property Inspector and adjusting the controls on the right of the dialog.
	 */
	var colorAlphaAmount : Int;
	/**
	 * Flash Professional CC.
	 * Property; an int that reduces or increases the tint and alpha values by a specified percentage. The current values are multiplied by this percentage. Valid values are -100 to 100.
	 * 
	 * This setting is the same as selecting Color > Advanced in the Instance Property Inspector and adjusting the controls on the left of the dialog
	 */
	var colorAlphaPercent : Int;
	/**
	 * Flash Professional CC.
	 * Property; an int that either reduces or increases the blue tint by a constant amount. This value is added to the current value. Valid values are -255 to 255.
	 * 
	 * This setting is the same as selecting Color > Advanced in the Instance Property Inspector.
	 */
	var colorBlueAmount : Int;
	/**
	 * Flash Professional CC.
	 * Property; an int that reduces or increases the blue tint values by a specified percentage. The current values are multiplied by this percentage. Valid values are -100 to 100.
	 * 
	 * This setting is the same as selecting Color > Advanced in the Instance Property Inspector.
	 */
	var colorBluePercent : Int;
	/**
	 * Flash Professional CC.
	 * Property; an int that either reduces or increases the green tint by a constant amount. This value is added to the current value. Valid values are -255 to 255.
	 * 
	 * This setting is the same as selecting Color > Advanced in the Instance Property Inspector.
	 */
	var colorGreenAmount : Int;
	/**
	 * Flash Professional CC.
	 * Property; an int that reduces or increases the green tint values by a specified percentage. The current values are multiplied by this percentage. Valid values are -100 to 100.
	 * 
	 * This setting is the same as selecting Color > Advanced in the Instance Property Inspector.
	 */
	var colorGreenPercent : Int;
	/**
	 * Flash Professional CC.
	 * Property; a string that specifies the color mode, as identified in the Symbol Properties dialog. Valid values are "none", "brightness", "tint", "alpha", and "advanced".
	 */
	var colorMode : ColorMode;
	/**
	 * Flash Professional CC.
	 * Property; an int that either reduces or increases the red tint by a constant amount. This value is added to the current value. Valid values are -255 to 255.
	 * 
	 * This setting is the same as selecting Color > Advanced in the Instance Property Inspector.
	 */
	var colorRedAmount : Int;
	/**
	 * Flash Professional CC.
	 * Property; an int that reduces or increases the red tint values by a specified percentage. The current values are multiplied by this percentage. Valid values are -100 to 100.
	 * 
	 * This setting is the same as selecting Color > Advanced in the Instance Property Inspector.
	 */
	var colorRedPercent : Int;
	/**
	 * Flash MX 2004.
	 * A string that is equivalent to the Description field in the Accessibility panel. The description is read by thescreen reader.
	 */
	var description : String;
	/**
	 * Flash Professional CC.
	 * Property; an array of Filter objects. The properties of Filter object in the filters array can be read but cannot be written directly by accessing the filters array. To set the properties of the filter objects in the filters array, first retrieve the array, set the properties, set it back to the filters array.
	 */
	var filters : Array<Filter>;
	/**
	 * Flash MX 2004.
	 * A Boolean value that enables and disables the children of the object to be accessible. This is equivalent to theinverse logic of the Make Child Objects Accessible setting in the Accessibility panel. If forceSimple is true, it is thesame as the Make Child Objects Accessible option being unchecked. If forceSimple is false, it is the same as theMake Child Object Accessible option being checked.
	 */
	var forceSimple : Bool;
	/**
	 * Flash MX 2004.
	 * A string that is equivalent to the Shortcut field in the Accessibility panel. The shortcut is read by the screenreader. This property is not available for dynamic text fields.
	 */
	var shortcut : String;
	/**
	 * Flash MX 2004.
	 * A Boolean value that enables or disables the accessibility of the object; equivalent to the inverse logic of MakeObject Accessible setting in the Accessibility panel. That is, if silent is true, then Make Object Accessible isunchecked. If silent is false, then Make Object Accessible is checked.
	 */
	var silent : Bool;
	/**
	 * Flash MX 2004.
	 * An integer that is equivalent to the Tab Index field in the Accessibility panel. Creates a tab order in whichobjects are accessed when the user presses the Tab key.
	 */
	var tabIndex : Int;
	/**
	 * Flash Professional CC.
	 * Read-only property; a Color object that, when the Color Effect Property Inspector is using style tint (colorMode == 'tint'), returns the color applied to the tint. Otherwise, using this property results in an error.
	 * TODO typeof
	 */
	var tintColor : Dynamic;
	/**
	 * Flash Professional CC.
	 * Read-only property; a string that, when the Color Effect Property Inspector is using style tint (colorMode == 'tint'), returns the tint percentage from -100 to 100. Otherwise, using this property results in an error.
	 */
	var tintPercent : Int;
}