package jsfl;

typedef HalfEdge =
{
	/**
	 * Flash MX 2004.
	 * Gets the Edge object for the HalfEdge object. See Edge object.
	 */
	function getEdge() : Edge;
	/**
	 * Flash MX 2004.
	 * Gets the next half edge on the current contour.Note: Although half edges have a direction and a sequence order, edges do not.
	 */
	function getNext() : HalfEdge;
	/**
	 * Flash MX 2004.
	 * Gets the HalfEdge object on the other side of the edge.
	 */
	function getOppositeHalfEdge() : HalfEdge;
	/**
	 * Flash MX 2004.
	 * Gets the preceding HalfEdge object on the current contour.Note: Although half edges have a direction and a sequence order, edges do not.
	 */
	function getPrev() : HalfEdge;
	/**
	 * Flash MX 2004.
	 * Gets the Vertex object at the head of the HalfEdge object. See Vertex object
	 */
	function getVertex() : Vertex;
	/**
	 * Flash MX 2004.
	 * Read-only. A unique integer identifier for the HalfEdge object.
	 */
	var id : Int;
	/**
	 * Read-only. An integer with a value of 0 or 1 that specifies the index for this HalfEdge object in the parent edge.
	 */
	var index : Int;
}