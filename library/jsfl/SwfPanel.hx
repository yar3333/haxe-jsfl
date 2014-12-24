package jsfl;

typedef SwfPanel =
{
	/**
	 * Read-only property: a string that represents the name of the specified Window SWF panel.
	 */
	var name : String;
	/**
	 * Read-only property: a string that represents the path to the SWF file used in the specified Window SWF panel.
	 */
	var path : String;
	
	/**
	 * Works in conjunction with the ActionScript ExternalInterface.addCallback() and MMExecute()methods to communicate with the SWF panel from the authoring environment.
	 * @request Parameters to pass to the function (see тАЬDescriptionтАЭ and тАЬExampleтАЭ below).
	 */
	function call(request:Parameter) : String;
	/**
	 * Method: Sets the keyboard focus to the specified SWF panel.
	 */
	function setFocus() : Void;
}