package jsfl;
import jsfl.Timeline;

typedef SymbolItem =
{>Item,
	/**
	 * Flash MX 2004.
	 * Converts a symbol item in the library to a compiled movie clip.
	 */
	function convertToCompiledClip() : Void;
	/**
	 * Flash MX 2004.
	 * Exports the symbol item to a SWC file.
	 * @param outputURI A string, expressed as a file:/// URI, that specifies the SWC file to which the method will export the symbol.
	 */
	function exportSWC(outputURI:String) : Void;
	/**
	 * Flash MX 2004.
	 * Exports the symbol item to a SWF file.
	 * @param outputURI A string, expressed as a file:/// URI, that specifies the SWF file to which the method will export the symbol.
	 */
	function exportSWF(outputURI:String) : Void;
	/**
	 * Flash Pro CS6.
	 * Exports a frame from the selected instance of movie clip, graphic, or button symbol on the Stage to a bitmap in Library.
	 * @param frameNumber An integer indicating the frame within the symbol to be exported.
	 * @param bitmapName A string indicating the name of the new bitmap to be added to the Library.
	 */
	function exportToLibrary(frameNumber:Int, bitmapName:String) : Void;
	/**
	 * Flash Pro CS6.
	 * Exports a movie clip, graphic, or button symbol to a sequence of PNG files on disk.
	 * @param outputURI The URI to export the PNG sequence files to. This URI must reference a local file. For example: file:///c|/tests/mytest.png.
	 * @param startFrameNum An integer indicating the first frame within the symbol to be exported. If this parameter is omitted, all frames are exported.
	 * @param endFrameNum An integer indicating the last frame within the symbol to be exported. If this parameter is omitted, all frames are exported.
	 * @param matrix 
	 */
	function exportToPNGSequence(outputURI:String, ?startFrameNum:Int, ?endFrameNum:Int, ?matrix:Matrix) : Void;
	/**
	 * Flash Pro CS6.
	 * Read-only property; a string that indicates the modification date of the symbol as a hexadecimal value, representing a date and time. This value is incremented every time a symbol's timeline is edited.
	 */
	var lastModifiedDate : String;
	/**
	 * Flash 8.
	 * A Boolean value that specifies whether 9-slice scaling is enabled for the item.
	 */
	var scalingGrid : Bool;
	/**
	 * Flash 8.
	 * A Rectangle object that specifies the locations of the four 9-slice guides. For information on the format of therectangle, see document.addNewRectangle().
	 */
	var scalingGridRect : Rectangle;
	/**
	 * Flash MX 2004.
	 * A Boolean value that specifies whether the item is updated when the FLA file is published. The default valueis false. Used for shared library symbols.
	 */
	var sourceAutoUpdate : Bool;
	/**
	 * Flash MX 2004.
	 * A string that specifies the path for the source FLA file as a file:/// URI. The path must be an absolute path, nota relative path. This property is used for shared library symbols.
	 */
	var sourceFilePath : String;
	/**
	 * Flash MX 2004.
	 * A string that specifies the name of the item in the source file library. It is used for shared library symbols.
	 */
	var sourceLibraryName : String;
	/**
	 * Flash MX 2004.
	 * A string that specifies the type of symbol. Acceptable values are "movie clip", "button", and "graphic".
	 */
	var symbolType : SymbolType;
	/**
	 * Flash MX 2004.
	 * Read-only. A Timeline object.
	 */
	var timeline : Timeline;
}

@:enum
abstract SymbolType(String) {
	var Button = "button";
	var MovieClip = "movie clip";
	var Graphics = "graphic";
}