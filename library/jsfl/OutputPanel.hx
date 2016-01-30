package jsfl;

typedef OutputPanel =
{
	/**
	 * Flash MX 2004.
	 * Clears the contents of the Output panel. You can use this method in a batch processing application to clear alist of errors, or to save them incrementally by using this method with outputPanel.save().
	 */
	function clear() : Void;
	/**
	 * Flash MX 2004; bUseSystemEncoding parameter added in Flash 8.
	 * Saves the contents of the Output panel to a local text file, either by overwriting the file or by appending to thefile.If fileURI is invalid or unspecified, an error is reported.This method is useful for batch processing. For example, you can create a JSFL file that compiles several components.Any compile errors appear in the Output panel, and you can use this method to save the resulting errors to a text file,which can be automatically parsed by the build system in use.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the local file to contain the contents of the Output panel.
	 * @param bAppendToFile An optional Boolean value. If true, it appends the Output panelтАЩs contents to the output file, and if
	 * @param bUseSystemEncoding An optional Boolean value. If true, it saves the Output panel text using the system encoding; if
	 */
	function save(fileURI:String, ?bAppendToFile:Bool, ?bUseSystemEncoding:Bool) : Void;
	/**
	 * Flash MX 2004.
	 * Sends a text string to the Output panel, terminated by a new line, and displays the Output panel if it is notalready visible. This method is identical to fl.trace(), and works in the same way as the trace() statement inActionScript.To send a blank line, use outputPanel.trace("") or outputPanel.trace("\n"). You can use the latter commandinline, making \n a part of the message string.
	 * @param message A string that contains the text to add to the Output panel.
	 */
	function trace(message:String) : Void;
}