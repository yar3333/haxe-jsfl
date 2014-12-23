package jsfl;

extern class Tools
{
	var activeTool : ToolObj;
	var altIsDown : Bool;
	function constrainPoint(pt1:JSFLPoint, pt2:JSFLPoint) : JSFLPoint;
	var ctlIsDown : Bool;
	function getKeyDown() : Int;
	var mouseIsDown : Bool;
	var penDownLoc : JSFLPoint;
	var penLoc : JSFLPoint;
	function setCursor(cursor:Int) : Void;
	var shiftIsDown : Bool;
	function snapPoint(pt:JSFLPoint) : JSFLPoint;
	var toolObjs : Array<ToolObj>;
}