package jsfl;

typedef Tools =
{
	var activeTool : ToolObj;
	var altIsDown : Bool;
	var ctlIsDown : Bool;
	var mouseIsDown : Bool;
	var penDownLoc : JSFLPoint;
	var penLoc : JSFLPoint;
	var shiftIsDown : Bool;
	var toolObjs : Array<ToolObj>;
	
	function constrainPoint(pt1:JSFLPoint, pt2:JSFLPoint) : JSFLPoint;
	function getKeyDown() : Int;
	function setCreatingBbox(placeholder:Int) : Void;
	function setCursor(cursor:Int) : Void;
	function snapPoint(pt:JSFLPoint) : JSFLPoint;
}