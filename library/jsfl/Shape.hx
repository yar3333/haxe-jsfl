package jsfl;

typedef Shape =
{>Element,
	var contours : Array<Contour>;
	var edges : Array<Edge>;
	var isDrawingObject : Bool;
	var isGroup : Bool;
	var isOvalObject : Bool;
	var isRectangleObject : Bool;
	var members : Array<Dynamic>;
	var numCubicSegments : Int;
	var vertices : Array<Vertex>;
	
	function beginEdit() : Void;
	function deleteEdge(index:Int) : Void;
	function endEdit() : Void;
	function getCubicSegmentPoints(cubicSegmentIndex:Int) : Array<JSFLPoint>;
}