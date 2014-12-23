package jsfl;

typedef ActionsPanel =
{
	function getClassForObject(ASvariableName:String) : String;
	function getScriptAssistMode() : Bool;
	function getSelectedText() : String;
	function getText() : String;
	function hasSelection() : Bool;
	function replaceSelectedText(replacementText:String) : Bool;
	function setScriptAssistMode(bScriptAssist:Bool) : Bool;
	function setSelection(startIndex:Int, numberOfChars:Int) : Bool;
	function setText(replacementText:String) : Bool;
}