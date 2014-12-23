package jsfl;

typedef Shape =
{> Element,
	function beginEdit() : Void;
	var contours : Array<Contour>;
	function deleteEdge(index:Int) : Void;
	var edges : Array<Edge>;
	function endEdit() : Void;
	var isDrawingObject : Bool;
	var isGroup : Bool;
	var isOvalObject : Bool;
	var isRectangleObject : Bool;
	var vertices : Array<Vertex>;
}