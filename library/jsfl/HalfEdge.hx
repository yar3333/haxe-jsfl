package jsfl;

extern class HalfEdge
{
	function getEdge() : Edge;
	function getNext() : HalfEdge;
	function getOppositeHalfEdge() : HalfEdge;
	function getPrev() : HalfEdge;
	function getVertex() : Vertex;
	var id : Int;
	var index : Int;
}