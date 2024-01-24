package jsfl;

typedef SoundItem =
{>Item,
	/**
	 * Flash MX 2004.
	 * A string that specifies the bit rate of a sound in the library. This property is available only for the MP3compression type. Acceptable values are "8 kbps", "16 kbps", "20 kbps", "24 kbps", "32 kbps", "48 kbps", "56kbps", "64 kbps", "80 kbps", "112 kbps", "128 kbps", and "160 kbps". Stereo sounds exported at 8 Kbps or 16Kbps are converted to mono. The property is undefined for other compression types.If you want to specify a value for this property, set soundItem.useImportedMP3Quality to false.
	 */
	var bitRate : BitRate;
	/**
	 * Flash MX 2004.
	 * A string that specifies the bits value for a sound in the library that has ADPCM compression. Acceptablevalues are "2 bit", "3 bit", "4 bit", and "5 bit".If you want to specify a value for this property, set soundItem.useImportedMP3Quality to false.
	 */
	var bits : Bits;
	/**
	 * Flash MX 2004.
	 * A string that specifies that compression type for a sound in the library. Acceptable values are "Default","ADPCM", "MP3", "Raw", and "Speech".If you want to specify a value for this property, set soundItem.useImportedMP3Quality to false.
	 */
	var compressionType : SoundCompressionType;
	/**
	 * Flash MX 2004.
	 * A Boolean value available only for MP3 and Raw compression types. Setting this value to true converts astereo sound to mono; false leaves it as stereo. For the MP3 compression type, if soundItem.bitRate is less than 20Kbps, this property is ignored and forced to true (see soundItem.bitRate).If you want to specify a value for this property, set soundItem.useImportedMP3Quality to false.
	 */
	var convertStereoToMono : Bool;
	/**
	 * Flash CS4 Professional.
	 * Exports the specified item to a QuickTime file on the Macintosh, or to a WAV or QT file on Windows. Theexported QuickTime or QT files contain only audio; video is not exported. Export settings are based on the item beingexported.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the path and name of the exported file.
	 */
	function exportToFile(fileURI:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a string containing a hexadecimal number that represents the number of seconds that haveelapsed between January 1, 1970, and the modification date of the original file (on disk) at the time the file wasimported to the library. If the file no longer exists, this value is "00000000".
	 */
	var fileLastModifiedDate : String;
	/**
	 * Flash Pro CS6.
	 * Read-only property; a hexadecimal value indicating the modification date and time of the sound item. This value is incremented every time the sound item is imported. For example, selecting the Update button from the Sound Properties dialog will trigger an import.
	 */
	var lastModifiedDate : Dynamic;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a string that specifies whether the specified item was imported as an mp3 file. Possible values forthis property are "RAW" and "MP3".
	 */
	var originalCompressionType : SoundCompressionType;
	/**
	 * Flash MX 2004.
	 * A string that specifies the playback quality of a sound in the library. This property is available only for theMP3 compression type. Acceptable values are "Fast", "Medium", and "Best".If you want to specify a value for this property, set soundItem.useImportedMP3Quality to false.
	 */
	var quality : Quality;
	/**
	 * Flash MX 2004.
	 * A string that specifies the sample rate for the audio clip. This property is available only for the ADPCM, Raw,and Speech compression types. Acceptable values are "5 kHz", "11 kHz", "22 kHz", and "44 kHz".If you want to specify a value for this property, set soundItem.useImportedMP3Quality to false.
	 */
	var sampleRate : String;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a Boolean value of true if the file that was imported to the Library still exists in the location fromwhere it was imported; false otherwise.
	 */
	var sourceFileExists : Bool;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a Boolean value of true if the file modification date of the Library item is the same as themodification date on disk of the file that was imported; false otherwise.
	 */
	var sourceFileIsCurrent : Bool;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a string, expressed as a file:/// URI, that represents the path and name of the file that was importedinto the Library.
	 */
	var sourceFilePath : String;
	/**
	 * Flash MX 2004.
	 * A Boolean value. If true, all other properties are ignored, and the imported MP3 quality is used.
	 */
	var useImportedMP3Quality : Bool;
}

enum abstract BitRate(String)
{
	var Kbps8 = "8 kbps";
	var Kbps16 = "16 kbps";
	var Kbps20 = "20 kbps";
	var Kbps24 = "24 kbps";
	var Kbps32 = "32 kbps";
	var Kbps48 = "48 kbps";
	var Kbps56 = "56 kbps";
	var Kbps64 = "64 kbps";
	var Kbps80 = "80 kbps";
	var Kbps112 = "112 kbps";
	var Kbps128 = "128 kbps";
	var Kbps160 = "160 kbps";
}

enum abstract Bits(String)
{
	var Bit2 = "2 bit";
	var Bit3 = "3 bit";
	var Bit4 = "4 bit";
	var Bit5 = "5 bit";
}

enum abstract SoundCompressionType(String)
{
	var Default = "Default";
	var ADPCM = "ADPCM";
	var MP3 = "MP3";
	var RAW = "RAW";
	var Speech = "Speech";
}

enum abstract Quality(String)
{
	var Fast = "Fast";
	var Medium = "Medium";
	var Best = "Best";
}