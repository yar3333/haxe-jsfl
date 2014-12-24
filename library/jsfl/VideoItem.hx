package jsfl;

typedef VideoItem =
{>Item,
	/**
	 * Read-only property: a string containing a hexadecimal number that represents the number of seconds that haveelapsed between January 1, 1970, and the modification date of the original file (on disk) at the time the file wasimported to the library. If the file no longer exists, this value is "00000000".
	 */
	var fileLastModifiedDate : String;
	/**
	 * Read-only property: a Boolean value of true if the file that was imported to the Library still exists in the location fromwhere it was imported; false otherwise.
	 */
	var sourceFileExists : Bool;
	/**
	 * Read-only property: a Boolean value of true if the file modification date of the Library item is the same as themodification date (on disk) of the file that was imported; false otherwise.
	 */
	var sourceFileIsCurrent : Bool;
	/**
	 * Read-only. A string, expressed as a file:/// URI that specifies the path to the video item.
	 */
	var sourceFilePath : String;
	/**
	 * Read-only. A string that specifies the type of video the item represents. Possible values are "embeddedvideo", "linked video", and "video".
	 */
	var videoType : String;
	
	/**
	 * Exports the specified item to an FLV file.
	 * @fileURI A string, expressed as a file:/// URI, that specifies the path and name of the exported file.
	 */
	function exportToFLV(fileURI:String) : Bool;
}