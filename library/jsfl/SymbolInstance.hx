package jsfl;

typedef SymbolInstance =
{> Instance,
	var accName : String;
	var actionScript : String;
	var blendMode : String;
	var buttonTracking : String;
	var cacheAsBitmap : Bool;
	var colorAlphaAmount : Int;
	var colorAlphaPercent : Float;
	var colorBlueAmount : Int;
	var colorBluePercent : Float;
	var colorGreenAmount : Int;
	var colorGreenPercent : Float;
	var colorMode : String;
	var colorRedAmount : Int;
	var colorRedPercent : Float;
	var description : String;
	var filters : Array<Filter>;
	var firstFrame : Int;
	var forceSimple : Bool;
	var loop : String;
	var shortcut : String;
	var silent : Bool;
	var symbolType : String;
	var tabIndex : Int;
}