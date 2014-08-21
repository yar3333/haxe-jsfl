package jsfl;

extern class Edge
{
	public function getControl(i:Int) : JSFLPoint;
	public function getHalfEdge(index:Int) : HalfEdge;
	public var id : Int;
	public var isLine : Int;
	public function setControl(index:Int, x:Float, y:Float) : Void;
	public function splitEdge(t:Float) : Void;
}