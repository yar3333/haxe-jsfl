package jsfl;

typedef Contour =
{
	var fill : Fill;
	var interior : Bool;
	var orientation : Int;
	
	function getHalfEdge() : HalfEdge;
}