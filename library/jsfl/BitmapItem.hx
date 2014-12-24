package jsfl;

typedef BitmapItem =
{>Item,
	/**
	 * A Boolean value that specifies whether to allow smoothing of a bitmap (true) or not (false).
	 */
	var allowSmoothing : Bool;
	/**
	 * A string that determines the type of image compression applied to the bitmap. Acceptable values are "photo"or "lossless". If the value of bitmapItem.useImportedJPEGQuality is false, "photo" corresponds to JPEG witha quality from 0 to 100; if bitmapItem.useImportedJPEGQuality is true, "photo" corresponds to JPEG using thedefault document quality value. The value "lossless" corresponds to GIF or PNG format (seebitmapItem.useImportedJPEGQuality).
	 */
	var compressionType : String;
	/**
	 * Read-only. A string containing a hexadecimal number that represents the number of seconds that haveelapsed between January 1, 1970 and the modification date of the original file at the time the file was imported to thelibrary. If the file no longer exists, this value is "00000000".
	 */
	var fileLastModifiedDate : String;
	/**
	 * Read-only. A string that specifies whether the specified item was imported as an jpeg file. Possible values forthis property are тАЬphotoтАЭ (for jpeg files) and тАЬlosslessтАЭ (for uncompressed file types such as GIF and PNG).
	 */
	var originalCompressionType : String;
	/**
	 * An integer that specifies the quality of the bitmap. To use the default document quality, specify -1; otherwise,specify an integer from 0 to 100. Available only for JPEG compression.
	 */
	var quality : Int;
	/**
	 * Read-only. A Boolean value of true if the file that was imported to the Library still exists in the location fromwhere it was imported; false otherwise.
	 */
	var sourceFileExists : Bool;
	/**
	 * Read-only. A Boolean value of true if the file modification date of the Library item is the same as themodification date on disk of the file that was imported ;false otherwise.
	 */
	var sourceFileIsCurrent : Bool;
	/**
	 * Read-only. A string, expressed as a file:/// URI, that represents the path and name of the file that was importedinto the Library.
	 */
	var sourceFilePath : String;
	/**
	 * A Boolean value that specifies whether deblocking is enabled (true) or not (false).
	 */
	var useDeblocking : Bool;
	/**
	 * A Boolean value that specifies whether to use the default imported JPEG quality (true) or not (false).Available only for JPEG compression.
	 */
	var useImportedJPEGQuality : Bool;
	
	/**
	 * Exports the specified item to a PNG or JPG file.
	 * @fileURI A string, expressed as a file:/// URI, that specifies the path and name of the exported file.
	 */
	function exportToFile(fileURI:String) : Bool;
}