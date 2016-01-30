package jsfl;

typedef ActionsPanel =
{
	/**
	 * Flash CS3 Professional. Dropped in Flash Professional CC.
	 * Returns the class of the specified variable, which must be defined in the currently displayed Actions panel. Inaddition, the cursor or selected text in the Actions panel must be positioned after the variable definition.
	 * @param ASvariableName A string that represents the name of an ActionScript variable.
	 */
	function getClassForObject(ASvariableName:String) : String;
	/**
	 * Flash CS3 Professional. Dropped in Flash Professional CC.
	 * Specifies whether Script Assist mode is enabled.
	 */
	function getScriptAssistMode() : Bool;
	/**
	 * Flash CS3 Professional.
	 * Returns the text that is currently selected in the Actions panel.
	 */
	function getSelectedText() : String;
	/**
	 * Flash CS3 Professional.
	 * Returns the text in the Actions panel.
	 */
	function getText() : String;
	/**
	 * Flash CS3 Professional.
	 * Specifies whether any text is currently selected in the Actions panel.
	 */
	function hasSelection() : Bool;
	/**
	 * Flash CS3 Professional.
	 * Replaces the currently selected text with the text specified in replacementText. If replacementText containsmore characters than the selected text, any characters following the selected text now follow replacementText; that is,they are not overwritten.
	 * @param replacementText A string that represents text to replace selected text in the Actions panel.
	 */
	function replaceSelectedText(replacementText:String) : Bool;
	/**
	 * Flash CS3 Professional. Dropped in Flash Professional CC.
	 * Enables or disables Script Assist mode.
	 * @param bScriptAssist A Boolean value that specifies whether to enable or disable Script Assist mode.
	 */
	function setScriptAssistMode(bScriptAssist:Bool) : Bool;
	/**
	 * Flash CS3 Professional.
	 * Selects a specified set of characters in the Actions panel.
	 * @param startIndex A zero-based integer that specifies the first character to be selected.
	 * @param numberOfChars An integer that specifies how many characters to select.
	 */
	function setSelection(startIndex:Int, numberOfChars:Int) : Bool;
	/**
	 * Flash CS3 Professional.
	 * Clears any text in the Actions panel and then adds the text specified in replacementText.
	 * @param replacementText A string that represents text to place in the Actions panel.
	 */
	function setText(replacementText:String) : Bool;
}