package jsfl;

typedef HalfEdge =
{
	var id : Int;
	var index : Int;
	
	function getEdge() : Edge;
	function getNext() : HalfEdge;
	function getOppositeHalfEdge() : HalfEdge;
	function getPrev() : HalfEdge;
	function getVertex() : Vertex;
}