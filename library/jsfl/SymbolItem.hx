package jsfl;

typedef SymbolItem =
{> Item,
	function convertToCompiledClip() : Void;
	function exportSWC(outputURI:String) : Void;
	function exportSWF(outputURI:String) : Void;
	var scalingGrid : Bool;
	var scalingGridRect : Rectangle;
	var sourceAutoUpdate : Bool;
	var sourceFilePath : String;
	var sourceLibraryName : String;
	var symbolType : String;
	var timeline : Timeline;
}