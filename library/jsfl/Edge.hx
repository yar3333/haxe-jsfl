package jsfl;

extern class Edge
{
	function getControl(i:Int) : JSFLPoint;
	function getHalfEdge(index:Int) : HalfEdge;
	var id : Int;
	var isLine : Int;
	function setControl(index:Int, x:Float, y:Float) : Void;
	function splitEdge(t:Float) : Void;
}