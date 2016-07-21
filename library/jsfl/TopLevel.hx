package jsfl;

@:native("") extern class TopLevel {
	
	/**
	 * Displays a string in a modal Alert dialog box, along with an OK button.
	 * @param alertText A string that specifies the message you want to display in the Alert dialog box.
	 */
	public static inline function alert(alertText:String):Void {
		untyped (__js__("alert"))(alertText);
	}
	
	/**
	 * Displays a string in a modal Alert dialog box, along with OK and Cancel buttons.
	 * Note: If there are no documents (FLA files) open, this method fails with an error condition.
	 * @param strAlert A string that specifies the message you want to display in the Alert dialog box.
	 * @return true if the user clicks OK; false if the user clicks Cancel.
	 */
	public static inline function confirm(strAlert:String):Bool {
		return untyped (__js__("confirm"))(strAlert);
	}
	
	/**
	 * Displays a prompt and optional text in a modal Alert dialog box, along with OK and Cancel buttons.
	 * @param promptMsg A string to display in the Prompt dialog box (limited to 256 characters in Mac OS X).
	 * @param text An optional string to display as a default value for the text field.
	 * @return The string the user typed if the user clicks OK; null if the user clicks Cancel.
	 */
	public static inline function prompt(promptMsg:String, ?text:String):String {
		return untyped (__js__("prompt"))(promptMsg, text);
	}
}