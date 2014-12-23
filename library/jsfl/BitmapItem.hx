package jsfl;

typedef BitmapItem =
{>Item,
	var allowSmoothing : Bool;
	var compressionType : String;
	var fileLastModifiedDate : String;
	var originalCompressionType : String;
	var quality : Int;
	var sourceFileExists : Bool;
	var sourceFileIsCurrent : Bool;
	var sourceFilePath : String;
	var useDeblocking : Bool;
	var useImportedJPEGQuality : Bool;
	
	function exportToFile(fileURI:String) : Bool;
}