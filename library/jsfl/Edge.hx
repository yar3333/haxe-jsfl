package jsfl;

typedef Edge =
{
	var cubicSegmentIndex : Int;
	var id : Int;
	var isLine : Int;
	var stroke : Stroke;
	
	function getControl(i:Int) : JSFLPoint;
	function getHalfEdge(index:Int) : HalfEdge;
	function setControl(index:Int, x:Float, y:Float) : Void;
	function splitEdge(t:Float) : Void;
}