package jsfl;

typedef Shape =
{> Element,
	public function beginEdit() : Void;
	public var contours : Array<Contour>;
	public function deleteEdge(index:Int) : Void;
	public var edges : Array<Edge>;
	public function endEdit() : Void;
	public var isDrawingObject : Bool;
	public var isGroup : Bool;
	public var isOvalObject : Bool;
	public var isRectangleObject : Bool;
	public var vertices : Array<Vertex>;
}