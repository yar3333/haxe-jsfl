package jsfl;

typedef SoundItem =
{>Item,
	/**
	 * A string that specifies the bit rate of a sound in the library. This property is available only for the MP3compression type. Acceptable values are "8 kbps", "16 kbps", "20 kbps", "24 kbps", "32 kbps", "48 kbps", "56kbps", "64 kbps", "80 kbps", "112 kbps", "128 kbps", and "160 kbps". Stereo sounds exported at 8 Kbps or 16Kbps are converted to mono. The property is undefined for other compression types.If you want to specify a value for this property, set soundItem.useImportedMP3Quality to false.
	 */
	var bitRate : String;
	/**
	 * A string that specifies the bits value for a sound in the library that has ADPCM compression. Acceptablevalues are "2 bit", "3 bit", "4 bit", and "5 bit".If you want to specify a value for this property, set soundItem.useImportedMP3Quality to false.
	 */
	var bits : String;
	/**
	 * A string that specifies that compression type for a sound in the library. Acceptable values are "Default","ADPCM", "MP3", "Raw", and "Speech".If you want to specify a value for this property, set soundItem.useImportedMP3Quality to false.
	 */
	var compressionType : String;
	/**
	 * A Boolean value available only for MP3 and Raw compression types. Setting this value to true converts astereo sound to mono; false leaves it as stereo. For the MP3 compression type, if soundItem.bitRate is less than 20Kbps, this property is ignored and forced to true (see soundItem.bitRate).If you want to specify a value for this property, set soundItem.useImportedMP3Quality to false.
	 */
	var convertStereoToMono : Bool;
	/**
	 * Read-only property: a string containing a hexadecimal number that represents the number of seconds that haveelapsed between January 1, 1970, and the modification date of the original file (on disk) at the time the file wasimported to the library. If the file no longer exists, this value is "00000000".
	 */
	var fileLastModifiedDate : String;
	/**
	 * Read-only property: a string that specifies whether the specified item was imported as an mp3 file. Possible values forthis property are тАЬRAWтАЭ and тАЬMP3тАЭ.
	 */
	var originalCompressionType : String;
	/**
	 * A string that specifies the playback quality of a sound in the library. This property is available only for theMP3 compression type. Acceptable values are "Fast", "Medium", and "Best".If you want to specify a value for this property, set soundItem.useImportedMP3Quality to false.
	 */
	var quality : String;
	/**
	 * A string that specifies the sample rate for the audio clip. This property is available only for the ADPCM, Raw,and Speech compression types. Acceptable values are "5 kHz", "11 kHz", "22 kHz", and "44 kHz".If you want to specify a value for this property, set soundItem.useImportedMP3Quality to false.
	 */
	var sampleRate : String;
	/**
	 * Read-only property: a Boolean value of true if the file that was imported to the Library still exists in the location fromwhere it was imported; false otherwise.
	 */
	var sourceFileExists : Bool;
	/**
	 * Read-only property: a Boolean value of true if the file modification date of the Library item is the same as themodification date on disk of the file that was imported; false otherwise.
	 */
	var sourceFileIsCurrent : Bool;
	/**
	 * Read-only property: a string, expressed as a file:/// URI, that represents the path and name of the file that was importedinto the Library.
	 */
	var sourceFilePath : String;
	/**
	 * A Boolean value. If true, all other properties are ignored, and the imported MP3 quality is used.
	 */
	var useImportedMP3Quality : Bool;
	
	/**
	 * Exports the specified item to a QuickTime file on the Macintosh, or to a WAV or QT file on Windows. Theexported QuickTime or QT files contain only audio; video is not exported. Export settings are based on the item beingexported.
	 * @fileURI A string, expressed as a file:/// URI, that specifies the path and name of the exported file.
	 */
	function exportToFile(fileURI:String) : Bool;
}