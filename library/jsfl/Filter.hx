package jsfl;

typedef Filter =
{
	/**
	 * Flash 8.
	 * A float value that specifies the angle of the shadow or highlight color, in degrees. Acceptable values arebetween 0 and 360. This property is defined for Filter objects with a value of "bevelFilter", "dropShadowFilter","gradientBevelFilter", or "gradientGlowFilter" for the filter.name property.
	 */
	var angle : Float;
	/**
	 * Flash 8.
	 * A float value that specifies the amount to blur in the x direction, in pixels. Acceptable values are between 0and 255. This property is defined for Filter objects with a value of "bevelFilter", "blurFilter","dropShadowFilter", "glowFilter", "gradientBevelFilter", or "gradientGlowFilter" for the filter.nameproperty.
	 */
	var blurX : Float;
	/**
	 * Flash 8.
	 * A float value that specifies the amount to blur in the y direction, in pixels. Acceptable values are between 0and 255. This property is defined for Filter objects with a value of "bevelFilter", "blurFilter","dropShadowFilter", "glowFilter", "gradientBevelFilter", or "gradientGlowFilter" for the filter.nameproperty.
	 */
	var blurY : Float;
	/**
	 * Flash 8.
	 * A float value that specifies the brightness of the filter. Acceptable values are between -100 and 100. Thisproperty is defined for Filter objects with a value of "adjustColorFilter" for the filter.name property.
	 */
	var brightness : Float;
	/**
	 * Flash 8.
	 * The color of the filter, in one of the following formats:тАв  A string in the format "#RRGGBB" or "#RRGGBBAA"тАв  A hexadecimal number in the format 0xRRGGBBтАв  An integer that represents the decimal equivalent of a hexadecimal numberThis property is defined for Filter objects with a value of "dropShadowFilter" or "glowFilter" for thefilter.name property.
	 */
	var color : Dynamic;
	/**
	 * Flash 8.
	 * A float value that specifies the contrast value of the filter. Acceptable values are between -100 and 100. Thisproperty is defined for Filter objects with a value of "adjustColorFilter" for the filter.name property.
	 */
	var contrast : Float;
	/**
	 * Flash 8.
	 * A float value that specifies the distance between the filterтАЩs effect and an object, in pixels. Acceptable valuesare from -255 to 255. This property is defined for Filter objects with a value of "bevelFilter", "dropShadowFilter","gradientBevelFilter", or "gradientGlowFilter" for the filter.name property.
	 */
	var distance : Float;
	/**
	 * Flash CS3 Professional.
	 * A Boolean value that specifies whether the specified filter is enabled (true) or disabled (false).
	 */
	var enabled : Bool;
	/**
	 * Flash 8.
	 * A Boolean value that specifies whether the source image is hidden (true) or displayed (false). This propertyis defined for Filter objects with a value of "dropShadowFilter" for the filter.name property.
	 */
	var hideObject : Bool;
	/**
	 * Flash 8.
	 * The color of the highlight, in one of the following formats:тАв  A string in the format "#RRGGBB" or "#RRGGBBAA"тАв  A hexadecimal number in the format 0xRRGGBBтАв  An integer that represents the decimal equivalent of a hexadecimal numberThis property is defined for Filter objects with a value of "bevelFilter" for the filter.name property.
	 */
	var highlightColor : Dynamic;
	/**
	 * Flash 8.
	 * A float value that specifies the hue of the filter. Acceptable values are between -180 and 180. This property isdefined for Filter objects with a value of "adjustColorFilter" for the filter.name property.
	 */
	var hue : Float;
	/**
	 * Flash 8.
	 * A Boolean value that specifies whether the shadow is an inner shadow (true) or not (false). This propertyis defined for Filter objects with a value of "dropShadowFilter" or "glowFilter" for the filter.name property.
	 */
	var inner : Bool;
	/**
	 * Flash 8.
	 * A Boolean value that specifies whether the filter is a knockout filter (true) or not (false). This property isdefined for Filter objects with a value of "bevelFilter", "dropShadowFilter", "glowFilter","gradientBevelFilter", or "gradientGlowFilter" for the filter.name property.
	 */
	var knockout : Bool;
	/**
	 * Flash 8.
	 * Read-only. A string that specifies the type of filter. The value of this property determines which otherproperties of the Filter object are available. The value is one of the following: "adjustColorFilter","bevelFilter", "blurFilter", "dropShadowFilter", "glowFilter", "gradientBevelFilter", or"gradientGlowFilter".
	 */
	var name : String;
	/**
	 * Flash 8.
	 * A string that specifies the blur quality. Acceptable values are "low", "medium", and "high" ("high" issimilar to a Gaussian blur). This property is defined for Filter objects with a value of "bevelFilter", "blurFilter","dropShadowFilter", "glowFilter", "gradientGlowFilter", or "gradientBevelFilter" for the filter.nameproperty.
	 */
	var quality : FilterQuality;
	/**
	 * Flash 8.
	 * A float value that specifies the saturation value of the filter. Acceptable values are from -100 to 100. Thisproperty is defined for Filter objects with a value of "adjustColorFilter" for the filter.name property.
	 */
	var saturation : Float;
	/**
	 * Flash 8.
	 * The color of the shadow, in one of the following formats:тАв  A string in the format "#RRGGBB" or "#RRGGBBAA"тАв  A hexadecimal number in the format 0xRRGGBBтАв  An integer that represents the decimal equivalent of a hexadecimal numberThis property is defined for Filter objects with a value of "bevelFilter" for the filter.name property.
	 */
	var shadowColor : Dynamic;
	/**
	 * Flash 8.
	 * An integer that specifies the percentage strength of the filter. Acceptable values are between 0 and 25,500.This property is defined for Filter objects with a value of "bevelFilter", "dropShadowFilter", "glowFilter","gradientGlowFilter", or "gradientBevelFilter" for the filter.name property.
	 */
	var strength : Int;
	/**
	 * The flash object represents the Flash application. You can use flash or fl to refer to this object. This documentationuses fl in code samples throughout.
	 */
	var type : FilterType;
}

@:enum
abstract FilterName(String) {
	var AdjustColorFilter = "adjustColorFilter";
	var BevelFilter = "bevelFilter";
	var BlurFilter = "blurFilter";
	var DropShadowFilter = "dropShadowFilter";
	var GlowFilter = "glowFilter";
	var GradientBevelFilter = "gradientBevelFilter";
	var GradientGlowFilter = "gradientGlowFilter";
}

@:enum
abstract FilterType(String) {
	var Inner = "inner";
	var Outer = "outer";
	var Full = "full";
}

@:enum
abstract FilterProperty(String) {
	var BlurX = "blurX";
	var BlurY = "blurY";
	var Quality = "quality";
	var Angle = "angle";
	var Distance = "distance";
	var Strength = "strength";
	var Knockout = "knockout";
	var Inner = "inner";
	var BevelType = "bevelType";
	var Color = "color";
	var ShadowColor = "shadowColor";
	var HighlightColor = "highlightColor";
}

@:enum
abstract FilterQuality {
	var Low = "low";
	var Medium = "medium";
	var High = "high";
}