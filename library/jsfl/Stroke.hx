package jsfl;

typedef Stroke =
{
	/**
	 * A Boolean value. This property is the same as the Sharp Corners setting in the custom Stroke Style dialog box.
	 */
	var breakAtCorners : Bool;
	/**
	 * A string that specifies the type of cap for the stroke. Acceptable values are "none", "round", and "square".
	 */
	var capType : String;
	/**
	 * The color of the stroke, in one of the following formats:тАв  A string in the format "#RRGGBB" or "#RRGGBBAA"тАв  A hexadecimal number in the format 0xRRGGBBтАв  An integer that represents the decimal equivalent of a hexadecimal number
	 */
	var color : Dynamic;
	/**
	 * A string that specifies the type of hatching for the stroke. This property can be set only if the stroke.styleproperty is set to "hatched" (see stroke.style). Acceptable values are "straight", "slight curve", "mediumcurve", and "very curved".
	 */
	var curve : String;
	/**
	 * An integer that specifies the lengths of the solid parts of a dashed line. This property is available only if thestroke.style property is set to dashed(see stroke.style).
	 */
	var dash1 : Int;
	/**
	 * An integer that specifies the lengths of the blank parts of a dashed line. This property is available only if thestroke.style property is set to dashed (see stroke.style).
	 */
	var dash2 : Int;
	/**
	 * A string that specifies the density of a stippled line. This property is available only if the stroke.styleproperty is set to stipple (see stroke.style). Acceptable values are "very dense", "dense", "sparse", and "verysparse".
	 */
	var density : String;
	/**
	 * A string that specifies the dot size of a stippled line. This property is available only if the stroke.styleproperty is set to stipple (see stroke.style). Acceptable values are "tiny", "small", "medium", and "large".The following example sets the dotSize property to tiny for the stroke style of stipple:var myStroke = fl.getDocumentDOM().getCustomStroke();myStroke.style = "stipple";myStroke.dotSpace= 3;myStroke.dotsize = "tiny";myStroke.variation = "random sizes";myStroke.density = "sparse";fl.getDocumentDOM().setCustomStroke(myStroke);
	 */
	var dotSize : String;
	/**
	 * An integer that specifies the spacing between dots in a dotted line. This property is available only if thestroke.style property is set to dotted. See stroke.style.
	 */
	var dotSpace : Int;
	/**
	 * A string that specifies the thickness of a hatch line. This property is available only if the stroke.styleproperty is set to hatched (see stroke.style). Acceptable values are "hairline", "thin", "medium", and "thick".
	 */
	var hatchThickness : String;
	/**
	 * A string that specifies the jiggle property of a hatched line. This property is available only if thestroke.style property is set to hatched (see stroke.style). Acceptable values are "none", "bounce", "loose",and "wild".
	 */
	var jiggle : String;
	/**
	 * A string that specifies the type of join for the stroke. Acceptable values are "miter", "round", and "bevel".
	 */
	var joinType : String;
	/**
	 * A string that specifies the length of a hatch line. This property is available only if the stroke.style propertyis set to hatched (see stroke.style). Acceptable values are "equal", "slight variation", "medium variation",and "random". (The value "random" actually maps to "medium variation".)
	 */
	var length : String;
	/**
	 * A float value that specifies the angle above which the tip of the miter will be truncated by a segment. Thatmeans the miter is truncated only if the miter angle is greater than the value of miterLimit.
	 */
	var miterLimit : Float;
	/**
	 * A string that specifies the pattern of a ragged line. This property is available only if the stroke.styleproperty is set to ragged (see stroke.style). Acceptable values are "solid", "simple", "random", "dotted","random dotted", "triple dotted", and "random triple dotted".
	 */
	var pattern : String;
	/**
	 * A string that specifies the rotation of a hatch line. This property is available only if the stroke.styleproperty is set to hatched (see stroke.style). Acceptable values are "none", "slight", "medium", and "free".
	 */
	var rotate : String;
	/**
	 * A string that specifies the type of scale to be applied to the stroke. Acceptable values are "normal","horizontal", "vertical", and "none".
	 */
	var scaleType : String;
	/**
	 * A Fill object that represents the fill settings of the stroke.
	 */
	var shapeFill : Fill;
	/**
	 * A string that specifies the spacing of a hatched line. This property is available only if the stroke.styleproperty is set to hatched (see stroke.style). Acceptable values are "very close", "close", "distant", and"very distant".
	 */
	var space : String;
	/**
	 * A Boolean value that specifies whether stroke hinting is set on the stroke.
	 */
	var strokeHinting : Bool;
	/**
	 * A string that describes the stroke style. Acceptable values are "noStroke","solid", "dashed", "dotted","ragged", "stipple", and "hatched". Some of these values require additional properties of the Stroke object to beset, as described in the following list:тАв  If value is "solid" or "noStroke", there are no other properties.тАв  If value is "dashed", there are two additional properties: dash1 and dash2.тАв  If value is "dotted", there is one additional property: dotSpace.тАв  If value is "ragged", there are three additional properties: pattern, waveHeight, and waveLength.тАв  If value is "stipple", there are three additional properties: dotSize, variation, and density.тАв  If value is "hatched", there are six additional properties: hatchThickness, space, jiggle, rotate, curve, andlength.
	 */
	var style : String;
	/**
	 * An integer that specifies the stroke size.
	 */
	var thickness : Int;
	/**
	 * A string that specifies the variation of a stippled line. This property is available only if the stroke.styleproperty is set to stipple (see stroke.style). Acceptable values are "one size", "small variation", "variedsizes", and "random sizes".
	 */
	var variation : String;
	/**
	 * A string that specifies the wave height of a ragged line. This property is available only if the stroke.styleproperty is set to ragged (see stroke.style). Acceptable values are "flat", "wavy", "very wavy", and "wild".
	 */
	var waveHeight : String;
	/**
	 * A string that specifies the wavelength of a ragged line. This property is available only if the stroke.styleproperty is set to ragged (see stroke.style). Acceptable values are "very short", "short", "medium", and"long".
	 */
	var waveLength : String;
}