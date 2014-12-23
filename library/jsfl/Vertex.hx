package jsfl;

typedef Vertex =
{
	var x : Float;
	var y : Float;
	
	function getHalfEdge() : HalfEdge;
	function setLocation(x:Float, y:Float) : Void;
}