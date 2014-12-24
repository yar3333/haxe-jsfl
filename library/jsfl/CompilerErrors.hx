package jsfl;

typedef CompilerErrors =
{
	/**
	 * Clears the contents of the Compiler Errors panel.
	 */
	function clear() : Void;
	/**
	 * Saves the contents of the Compiler Errors panel to a local text file.
	 * @fileURI A string, expressed as a file:/// URI, that specifies the filename for the saved file. If fileURI already exists, and
	 * @bAppendToFile An optional Boolean value that specifies whether the contents of the Compiler Errors panel should
	 * @bUseSystemEncoding An optional Boolean value that specifies whether to save the Compiler Errors panel text using
	 */
	function save(fileURI:String, ?bAppendToFile:Bool, ?bUseSystemEncoding:Bool) : Void;
}