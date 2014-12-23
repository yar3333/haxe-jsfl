package jsfl;

typedef SoundItem =
{>Item,
	var bitRate : String;
	var bits : String;
	var compressionType : String;
	var convertStereoToMono : Bool;
	var fileLastModifiedDate : String;
	var originalCompressionType : String;
	var quality : String;
	var sampleRate : String;
	var sourceFileExists : Bool;
	var sourceFileIsCurrent : Bool;
	var sourceFilePath : String;
	var useImportedMP3Quality : Bool;
	
	function exportToFile(fileURI:String) : Bool;
}