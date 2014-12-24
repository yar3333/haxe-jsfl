package jsfl;

typedef SymbolItem =
{>Item,
	/**
	 * A Boolean value that specifies whether 9-slice scaling is enabled for the item.
	 */
	var scalingGrid : Bool;
	/**
	 * A Rectangle object that specifies the locations of the four 9-slice guides. For information on the format of therectangle, see document.addNewRectangle().
	 */
	var scalingGridRect : Rectangle;
	/**
	 * A Boolean value that specifies whether the item is updated when the FLA file is published. The default valueis false. Used for shared library symbols.
	 */
	var sourceAutoUpdate : Bool;
	/**
	 * A string that specifies the path for the source FLA file as a file:/// URI. The path must be an absolute path, nota relative path. This property is used for shared library symbols.
	 */
	var sourceFilePath : String;
	/**
	 * A string that specifies the name of the item in the source file library. It is used for shared library symbols.
	 */
	var sourceLibraryName : String;
	/**
	 * A string that specifies the type of symbol. Acceptable values are "movie clip", "button", and "graphic".
	 */
	var symbolType : String;
	/**
	 * Read-only. A Timeline object.
	 */
	var timeline : Timeline;
	
	/**
	 * Converts a symbol item in the library to a compiled movie clip.
	 */
	function convertToCompiledClip() : Void;
	/**
	 * Exports the symbol item to a SWC file.
	 * @outputURI A string, expressed as a file:/// URI, that specifies the SWC file to which the method will export the symbol.
	 */
	function exportSWC(outputURI:String) : Void;
	/**
	 * Exports the symbol item to a SWF file.
	 * @outputURI A string, expressed as a file:/// URI, that specifies the SWF file to which the method will export the symbol.
	 */
	function exportSWF(outputURI:String) : Void;
}