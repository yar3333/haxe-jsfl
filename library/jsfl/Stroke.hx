package jsfl;

typedef Stroke =
{
	/**
	 * Flash MX 2004. Deprecated in Flash CS3 in favor of stroke.joinType.
	 * A Boolean value. This property is the same as the Sharp Corners setting in the custom Stroke Style dialog box.
	 */
	var breakAtCorners : Bool;
	/**
	 * Flash 8.
	 * A string that specifies the type of cap for the stroke. Acceptable values are "none", "round", and "square".
	 */
	var capType : StrokeCanType;
	/**
	 * Flash MX 2004. In Flash 8 and later, this property is deprecated in favor of stroke.shapeFill.color.
	 * The color of the stroke, in one of the following formats:тАв  A string in the format "#RRGGBB" or "#RRGGBBAA"тАв  A hexadecimal number in the format 0xRRGGBBтАв  An integer that represents the decimal equivalent of a hexadecimal number
	 */
	var color : Dynamic;
	/**
	 * Flash MX 2004.
	 * A string that specifies the type of hatching for the stroke. This property can be set only if the stroke.styleproperty is set to "hatched" (see stroke.style). Acceptable values are "straight", "slight curve", "mediumcurve", and "very curved".
	 */
	var curve : StrokeCurve;
	/**
	 * Flash MX 2004.
	 * An integer that specifies the lengths of the solid parts of a dashed line. This property is available only if thestroke.style property is set to dashed(see stroke.style).
	 */
	var dash1 : Int;
	/**
	 * Flash MX 2004.
	 * An integer that specifies the lengths of the blank parts of a dashed line. This property is available only if thestroke.style property is set to dashed (see stroke.style).
	 */
	var dash2 : Int;
	/**
	 * Flash MX 2004.
	 * A string that specifies the density of a stippled line. This property is available only if the stroke.styleproperty is set to stipple (see stroke.style). Acceptable values are "very dense", "dense", "sparse", and "verysparse".
	 */
	var density : StrokeDensity;
	/**
	 * Flash MX 2004.
	 * A string that specifies the dot size of a stippled line. This property is available only if the stroke.styleproperty is set to stipple (see stroke.style). Acceptable values are "tiny", "small", "medium", and "large".The following example sets the dotSize property to tiny for the stroke style of stipple:var myStroke = fl.getDocumentDOM().getCustomStroke();myStroke.style = "stipple";myStroke.dotSpace= 3;myStroke.dotsize = "tiny";myStroke.variation = "random sizes";myStroke.density = "sparse";fl.getDocumentDOM().setCustomStroke(myStroke);
	 */
	var dotSize : StrokeDotSize;
	/**
	 * Flash MX 2004.
	 * An integer that specifies the spacing between dots in a dotted line. This property is available only if thestroke.style property is set to dotted. See stroke.style.
	 */
	var dotSpace : Int;
	/**
	 * Flash MX 2004.
	 * A string that specifies the thickness of a hatch line. This property is available only if the stroke.styleproperty is set to hatched (see stroke.style). Acceptable values are "hairline", "thin", "medium", and "thick".
	 */
	var hatchThickness : StrokeHatchThickness;
	/**
	 * Flash MX 2004.
	 * A string that specifies the jiggle property of a hatched line. This property is available only if thestroke.style property is set to hatched (see stroke.style). Acceptable values are "none", "bounce", "loose",and "wild".
	 */
	var jiggle : StrokeJiggle;
	/**
	 * Flash MX 2004.
	 * A string that specifies the type of join for the stroke. Acceptable values are "miter", "round", and "bevel".
	 */
	var joinType : StrokeJoinType;
	/**
	 * Flash MX 2004.
	 * A string that specifies the length of a hatch line. This property is available only if the stroke.style propertyis set to hatched (see stroke.style). Acceptable values are "equal", "slight variation", "medium variation",and "random". (The value "random" actually maps to "medium variation".)
	 */
	var length : StrokeLength;
	/**
	 * Flash MX 2004.
	 * A float value that specifies the angle above which the tip of the miter will be truncated by a segment. Thatmeans the miter is truncated only if the miter angle is greater than the value of miterLimit.
	 */
	var miterLimit : Float;
	/**
	 * Flash MX 2004.
	 * A string that specifies the pattern of a ragged line. This property is available only if the stroke.styleproperty is set to ragged (see stroke.style). Acceptable values are "solid", "simple", "random", "dotted","random dotted", "triple dotted", and "random triple dotted".
	 */
	var pattern : StrokePattern;
	/**
	 * Flash MX 2004.
	 * A string that specifies the rotation of a hatch line. This property is available only if the stroke.styleproperty is set to hatched (see stroke.style). Acceptable values are "none", "slight", "medium", and "free".
	 */
	var rotate : StrokeRotate;
	/**
	 * Flash MX 2004.
	 * A string that specifies the type of scale to be applied to the stroke. Acceptable values are "normal","horizontal", "vertical", and "none".
	 */
	var scaleType : StrokeScaleType;
	/**
	 * Flash MX 2004.
	 * A Fill object that represents the fill settings of the stroke.
	 */
	var shapeFill : Fill;
	/**
	 * Flash MX 2004.
	 * A string that specifies the spacing of a hatched line. This property is available only if the stroke.styleproperty is set to hatched (see stroke.style). Acceptable values are "very close", "close", "distant", and"very distant".
	 */
	var space : StrokeSpace;
	/**
	 * Flash MX 2004.
	 * A Boolean value that specifies whether stroke hinting is set on the stroke.
	 */
	var strokeHinting : Bool;
	/**
	 * Flash MX 2004.
	 * A string that describes the stroke style. Acceptable values are "noStroke","solid", "dashed", "dotted","ragged", "stipple", and "hatched". Some of these values require additional properties of the Stroke object to beset, as described in the following list:тАв  If value is "solid" or "noStroke", there are no other properties.тАв  If value is "dashed", there are two additional properties: dash1 and dash2.тАв  If value is "dotted", there is one additional property: dotSpace.тАв  If value is "ragged", there are three additional properties: pattern, waveHeight, and waveLength.тАв  If value is "stipple", there are three additional properties: dotSize, variation, and density.тАв  If value is "hatched", there are six additional properties: hatchThickness, space, jiggle, rotate, curve, andlength.
	 */
	var style : StrokeStyle;
	/**
	 * Flash MX 2004.
	 * An integer that specifies the stroke size.
	 */
	var thickness : Int;
	/**
	 * Flash MX 2004.
	 * A string that specifies the variation of a stippled line. This property is available only if the stroke.styleproperty is set to stipple (see stroke.style). Acceptable values are "one size", "small variation", "variedsizes", and "random sizes".
	 */
	var variation : String;
	/**
	 * Flash MX 2004.
	 * A string that specifies the wave height of a ragged line. This property is available only if the stroke.styleproperty is set to ragged (see stroke.style). Acceptable values are "flat", "wavy", "very wavy", and "wild".
	 */
	var waveHeight : StrokeWaveHeight;
	/**
	 * Flash MX 2004.
	 * A string that specifies the wavelength of a ragged line. This property is available only if the stroke.styleproperty is set to ragged (see stroke.style). Acceptable values are "very short", "short", "medium", and"long".
	 */
	var waveLength : StrokeWaveLength;
}

enum abstract StrokeCanType(String) {
	var None = "none";
	var Round = "round";
	var Square = "square";
}

enum abstract StrokeCurve(String) {
	var Straight = "straight";
	var SlightCurve = "slight curve";
	var MediumCurve = "medium curve";
	var VeryCurved = "very curved";
}

enum abstract StrokeDensity(String) {
	var VeryDense = "very dense";
	var Dense = "dense";
	var Sparse = "sparse";
	var VerySparse = "very sparse";
}

enum abstract StrokeDotSize(String) {
	var Tiny = "tiny";
	var Small = "small";
	var Medium = "medium";
	var Large = "large";
}

enum abstract StrokeHatchThickness(String) {
	var Hairline = "hairline";
	var Thin = "thin";
	var Medium = "medium";
	var Thick = "thick";
}

enum abstract StrokeJiggle(String) {
	var None = "none";
	var Bounce = "bounce";
	var Loose = "loose";
	var Wild = "wild";
}

enum abstract StrokeJoinType(String) {
	var Miter = "miter";
	var Round = "round";
	var Bevel = "bevel";
}

enum abstract StrokeLength(String) {
	var Equal = "equal";
	var SlightVariation = "slight variation";
	var MediumVariation = "medium variation";
	var Random = "random";
}

enum abstract StrokePattern(String) {
	var Solid = "solid";
	var Simple = "simple";
	var Random = "random";
	var Dotted = "dotted";
	var RandomDotted = "random dotted";
	var TripleDotted = "triple dotted";
	var RandomTripleDotted = "random triple dotted";
}

enum abstract StrokeRotate(String) {
	var None = "none";
	var Slight = "slight";
	var Medium = "medium";
	var Free = "free";
}

enum abstract StrokeScaleType(String) {
	var Normal = "normal";
	var Horizonal = "horizontal";
	var Vertical = "vertical";
	var None = "none";
}

enum abstract StrokeSpace(String) {
	var VeryClose = "very close";
	var Close = "close";
	var Distant = "distant";
	var VeryDistant = "very distant";
}

enum abstract StrokeStyle(String) {
	var NoStroke = "noStroke";
	var Hairline = "hairline";
	var Solid = "solid";
	var Dashed = "dashed";
	var Dotted = "dotted";
	var Ragged = "ragged";
	var Stipple = "stipple";
	var Hatched = "hatched";
}

enum abstract StrokeVariation(String) {
	var OneSize = "one size";
	var SmallVariation = "small variation";
	var VariedSizes = "varied sizes";
	var RandomSizes = "random sizes";
}

enum abstract StrokeWaveHeight(String) {
	var Flat = "flat";
	var Wavy = "wavy";
	var VeryWavy = "very wavy";
	var Wild = "wild";
}

enum abstract StrokeWaveLength(String) {
	var VeryShort = "very short";
	var Short = "short";
	var Medium = "medium";
	var Long = "long";
}