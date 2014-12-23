package jsfl;

typedef VideoItem =
{>Item,
	var fileLastModifiedDate : String;
	var sourceFileExists : Bool;
	var sourceFileIsCurrent : Bool;
	var sourceFilePath : String;
	var videoType : String;
	
	function exportToFLV(fileURI:String) : Bool;
}