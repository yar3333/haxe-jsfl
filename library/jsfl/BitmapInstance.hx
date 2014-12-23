package jsfl;

typedef BitmapInstanceBits =
{
	var width : Int;
	var height : Int;
	var depth : Int;
	var bits : Array<Int>;
	var cTab : Array<String>;
}

typedef BitmapInstance =
{> Instance,
	function getBits() : BitmapInstanceBits;
	var hPixels : Int;
	function setBits(bitmap:BitmapInstanceBits) : Void;
	var vPixels : Int;
}