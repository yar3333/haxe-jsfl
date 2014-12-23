package jsfl;

typedef XMLUI =
{
	function accept() : Void;
	function cancel() : Void;
	function get(controlPropertyName:String) : String;
	function getControlItemElement(controlPropertyName:String) : { label:String, value:String };
	function getEnabled(controlID:String) : Bool;
	function getVisible(controlID:String) : Bool;
	function set(controlPropertyName:String, value:String) : Void;
	function setControlItemElement(controlPropertyName:String, elementItem:{ label:String, value:String }) : Void;
	function setControlItemElements(controlID:String, elementItemArray:Array<{ label:String, value:String }>) : Void;
	function setEnabled(controlID:String, enable:Bool) : Void;
	function setVisible(controlID:String, visible:Bool) : Void;
}