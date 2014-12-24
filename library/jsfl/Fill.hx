package jsfl;

typedef Fill =
{
	/**
	 * A Boolean value that specifies whether the bitmap fill for a shape that is larger than the bitmap is clipped(true) or repeated (false). This property is available only if the value of the fill.style property is "bitmap". If theshape is smaller than the bitmap, this value is false.
	 */
	var bitmapIsClipped : Bool;
	/**
	 * A string that specifies the path and name of the bitmap fill in the Library. This property is available only ifthe value of the fill.style property is "bitmap".
	 */
	var bitmapPath : String;
	/**
	 * The color of the fill, in one of the following formats:тАв  A string in the format "#RRGGBB" or "#RRGGBBAA"тАв  A hexadecimal number in the format 0xRRGGBBтАв  An integer that represents the decimal equivalent of a hexadecimal number
	 */
	var color : Dynamic;
	/**
	 * An array of colors in the gradient, expressed as integers. This property is available only if the value of thefill.style property is either "radialGradient" or "linearGradient". See fill.style
	 */
	var colorArray : Array<Dynamic>;
	/**
	 * An integer that specifies the gradient focal point horizontal offset from the transformation point. A value of10, for example, would place the focal point at 10/255 of the distance from the transformation point to the edge of thegradient. A value of -255 would place the focal point at the left boundary of the gradient. The default value is 0.This property is available only if the value of the fill.style property is "radialGradient".
	 */
	var focalPoint : Int;
	/**
	 * A Boolean value that specifies whether to render the fill as a linear or radial RGB gradient. Set this propertyto true to specify a linear interpolation of a gradient; set it to false to specify a radial interpolation of a gradient. Thedefault value is false.
	 */
	var linearRGB : Bool;
	/**
	 * A Matrix object that defines the placement, orientation, and scales for gradient fills.
	 */
	var matrix : Matrix;
	/**
	 * A string that specifies the behavior of a gradientтАЩs overflow. Acceptable values are "extend", "repeat", and"reflect"; the strings are not case-sensitive. The default value is "extend".
	 */
	var overflow : String;
	/**
	 * An array of integers, each in the range of zero to 255, indicating the position of the corresponding color. Thisproperty is available only if the value of the fill.style property is either "radialGradient" or "linearGradient".
	 */
	var posArray : Array<Int>;
	/**
	 * A string that specifies the fill style. Acceptable values are "bitmap", "solid", "linearGradient","radialGradient", and "noFill".If this value is "linearGradient" or "radialGradient", the fill.colorArray and fill.posArray properties arealso available. If this value is "bitmap", the fill.bitmapIsClipped and fill.bitmapPath properties are alsoavailable.
	 */
	var style : String;
}