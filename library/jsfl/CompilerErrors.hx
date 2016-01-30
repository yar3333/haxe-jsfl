package jsfl;

typedef CompilerErrors =
{
	/**
	 * Flash CS3 Professional.
	 * Clears the contents of the Compiler Errors panel.
	 */
	function clear() : Void;
	/**
	 * Flash CS3 Professional.
	 * Saves the contents of the Compiler Errors panel to a local text file.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the filename for the saved file. If fileURI already exists, and
	 * @param bAppendToFile An optional Boolean value that specifies whether the contents of the Compiler Errors panel should
	 * @param bUseSystemEncoding An optional Boolean value that specifies whether to save the Compiler Errors panel text using
	 */
	function save(fileURI:String, ?bAppendToFile:Bool, ?bUseSystemEncoding:Bool) : Void;
}