package jsfl;

typedef ToolObj =
{
	var depth : Int;
	function enablePIControl(control:String, bEnable:Bool) : Void;
	var iconID : Int;
	var position : Int;
	function setIcon(file:String) : Void;
	function setMenuString(menuStr:String) : Void;
	function setOptionsFile(xmlFile:String) : Void;
	function setPI(pi:String) : Void;
	function setToolName(name:String) : Void;
	function setToolTip(toolTip:String) : Void;
	function showPIControl(control:String, bShow:Bool) : Void;
	function showTransformHandles(bShow:Bool) : Void;
}