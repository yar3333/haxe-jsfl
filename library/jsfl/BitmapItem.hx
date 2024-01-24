package jsfl;

typedef BitmapItem =
{>Item,
	/**
	 * Flash MX 2004.
	 * A Boolean value that specifies whether to allow smoothing of a bitmap (true) or not (false).
	 */
	var allowSmoothing : Bool;
	/**
	 * Flash MX 2004.
	 * A string that determines the type of image compression applied to the bitmap. Acceptable values are "photo"or "lossless". If the value of bitmapItem.useImportedJPEGQuality is false, "photo" corresponds to JPEG witha quality from 0 to 100; if bitmapItem.useImportedJPEGQuality is true, "photo" corresponds to JPEG using thedefault document quality value. The value "lossless" corresponds to GIF or PNG format (seebitmapItem.useImportedJPEGQuality).
	 */
	var compressionType : BitmapCompressionType;
	/**
	 * Flash CS4 Professional.
	 * Exports the specified item to a PNG or JPG file.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the path and name of the exported file.
	 */
	function exportToFile(fileURI:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Read-only. A string containing a hexadecimal number that represents the number of seconds that haveelapsed between January 1, 1970 and the modification date of the original file at the time the file was imported to thelibrary. If the file no longer exists, this value is "00000000".
	 */
	var fileLastModifiedDate : String;
	/**
	 * Flash CS6 Professional.
	 * Read-only property; a boolean indicating if a bitmap in the library has a valid/useful alpha channel. This flag will help you decide if you should export the bitmap item as a PNG instead of a JPEG using the bitmapItem.exportToFile() function.
	 */
	var hasValidAlphaLayer : Bool;
	/**
	 * Flash CS6 Professional.
	 * Read-only property; an int that specifies the width of the bitmap, in pixels.
	 */
	var hPixels : Int;
	/**
	 * Flash Pro CS6.
	 * Read-only property; a hexadecimal value indicating the modification date and time of the bitmap item. This value is incremented every time the bitmap item is imported. For example, selecting the Update button from the Bitmap Properties dialog will trigger an import.
	 */
	var lastModifiedDate : String;
	/**
	 * Flash CS4 Professional.
	 * Read-only. A string that specifies whether the specified item was imported as an jpeg file. Possible values forthis property are тАЬphotoтАЭ (for jpeg files) and тАЬlosslessтАЭ (for uncompressed file types such as GIF and PNG).
	 */
	var originalCompressionType : BitmapCompressionType;
	/**
	 * Flash MX 2004.
	 * An integer that specifies the quality of the bitmap. To use the default document quality, specify -1; otherwise,specify an integer from 0 to 100. Available only for JPEG compression.
	 */
	var quality : Int;
	/**
	 * Flash CS4 Professional.
	 * Read-only. A Boolean value of true if the file that was imported to the Library still exists in the location fromwhere it was imported; false otherwise.
	 */
	var sourceFileExists : Bool;
	/**
	 * Flash CS4 Professional.
	 * Read-only. A Boolean value of true if the file modification date of the Library item is the same as themodification date on disk of the file that was imported ;false otherwise.
	 */
	var sourceFileIsCurrent : Bool;
	/**
	 * Flash CS4 Professional.
	 * Read-only. A string, expressed as a file:/// URI, that represents the path and name of the file that was importedinto the Library.
	 */
	var sourceFilePath : String;
	/**
	 * Flash CS4 Professional.
	 * A Boolean value that specifies whether deblocking is enabled (true) or not (false).
	 */
	var useDeblocking : Bool;
	/**
	 * Flash MX 2004.
	 * A Boolean value that specifies whether to use the default imported JPEG quality (true) or not (false).Available only for JPEG compression.
	 */
	var useImportedJPEGQuality : Bool;
	/**
	 * Flash CS6 Professional.
	 * Read-only property; an int that specifies the height of the bitmap, in pixels.
	 */
	var vPixels : Int;
}

enum abstract BitmapCompressionType(String) {
	var Photo = "photo";
	var Lossless = "lossless";
}