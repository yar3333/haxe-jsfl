package jsfl;

typedef SwfPanel =
{
	/**
	 * Flash CS4 Professional.
	 * Works in conjunction with the ActionScript ExternalInterface.addCallback() and MMExecute()methods to communicate with the SWF panel from the authoring environment.
	 * @param request Parameters to pass to the function (see “Description” and “Example” below).
	 */
	function call(request:Parameter) : String;
	/**
	 * Flash Professional CC.
	 * Read-only property: a string that contains the DPI scale factor (scaleX) for swfPanel. Depending on this scale-factor, SwfPanel can adjust its contents.
	 */
	var dpiScaleFactorX : String;
	/**
	 * Flash Professional CC.
	 * Read-only property: a string that contains the DPI scale factor (scaleY) for swfPanel. Depending on this scale-factor, SwfPanel can adjust its contents.
	 */
	var dpiScaleFactorY : String;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a string that represents the name of the specified Window SWF panel.
	 */
	var name : String;
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a string that represents the path to the SWF file used in the specified Window SWF panel.
	 */
	var path : String;
	/**
	 * Flash rofessional CC.
	 * Method: Reloads content in the SWF panel.
	 */
	function reload() : Void;
	/**
	 * Flash CS5.5 Professional.
	 * Method: Sets the keyboard focus to the specified SWF panel.
	 */
	function setFocus() : Void;
}