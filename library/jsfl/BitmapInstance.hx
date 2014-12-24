package jsfl;

typedef BitmapInstance =
{>Instance,
	/**
	 * Read-only. An integer that represents the width of the bitmapтАФthat is, the number of pixels in the horizontaldimension.
	 */
	var hPixels : Int;
	/**
	 * Read-only. An integer that represents the height of the bitmapтАФthat is, the number of pixels in the verticaldimension.
	 */
	var vPixels : Int;
	
	/**
	 * Lets you create bitmap effects by getting the bits out of the bitmap, manipulating them, and then returningthem to Flash.
	 */
	function getBits() : BitmapInstanceBits;
	/**
	 * Sets the bits of an existing bitmap element. This lets you create bitmap effects by getting the bits out of thebitmap, manipulating them, and then returning the bitmap to Flash.
	 * @bitmap An object that contains height, width, depth, bits, and cTab properties. The height, width, and depth
	 */
	function setBits(bitmap:BitmapInstanceBits) : Void;
}