package jsfl;

typedef Vertex =
{
	/**
	 * Read-only. The x location of the vertex, in pixels.
	 */
	var x : Float;
	/**
	 * Read-only. The y location of the vertex, in pixels.
	 */
	var y : Float;
	
	/**
	 * Gets a HalfEdge object that shares this vertex.
	 */
	function getHalfEdge() : HalfEdge;
	/**
	 * Sets the location of the vertex. You must call shape.beginEdit() before using this method.
	 * @x A floating-point value that specifies the x coordinate of where the vertex should be positioned, in pixels.
	 * @y A floating-point value that specifies the y coordinate of where the vertex should be positioned, in pixels.
	 */
	function setLocation(x:Float, y:Float) : Void;
}