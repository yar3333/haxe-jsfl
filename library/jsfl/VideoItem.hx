package jsfl;

typedef VideoItem =
{>Item,
	/**
	 * Flash CS4 Professional.
	 * Exports the specified item to an FLV file.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the path and name of the exported file.
	 */
	function exportToFLV(fileURI:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a string containing a hexadecimal number that represents the number of seconds that haveelapsed between January 1, 1970, and the modification date of the original file (on disk) at the time the file wasimported to the library. If the file no longer exists, this value is "00000000".
	 */
	var fileLastModifiedDate : String;
	/**
	 * Flash Pro CS6.
	 * Read-only property: a hexadecimal value indicating the modification date and time of the video item. This value is incremented every time the video item is imported.
	 */
	var lastModifiedDate : String;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a Boolean value of true if the file that was imported to the Library still exists in the location fromwhere it was imported; false otherwise.
	 */
	var sourceFileExists : Bool;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a Boolean value of true if the file modification date of the Library item is the same as themodification date (on disk) of the file that was imported; false otherwise.
	 */
	var sourceFileIsCurrent : Bool;
	/**
	 * Flash 8.
	 * Read-only. A string, expressed as a file:/// URI that specifies the path to the video item.
	 */
	var sourceFilePath : String;
	/**
	 * Flash 8.
	 * Read-only. a string that specifies the type of video the item represents. Possible values are "embedded video" and "video".
	 */
	var videoType : VideoType;
}

@:enum
abstract VideoType(String) {
	var EmbeddedVideo = "embedded video";
	var Video = "video";
}