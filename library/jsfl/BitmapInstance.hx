package jsfl;

typedef BitmapInstance =
{>Instance,
	var hPixels : Int;
	var vPixels : Int;
	
	function getBits() : BitmapInstanceBits;
	function setBits(bitmap:BitmapInstanceBits) : Void;
}