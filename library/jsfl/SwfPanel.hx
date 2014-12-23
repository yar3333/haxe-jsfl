package jsfl;

typedef SwfPanel =
{
	var name : String;
	var path : String;
	
	function call(request:Parameter) : String;
	function setFocus() : Void;
}