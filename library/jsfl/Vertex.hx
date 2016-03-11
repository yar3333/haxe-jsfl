package jsfl;

typedef Vertex =
{
	/**
	 * Flash MX 2004.
	 * Gets a HalfEdge object that shares this vertex.
	 */
	function getHalfEdge() : HalfEdge;
	/**
	 * Flash MX 2004.
	 * Sets the location of the vertex. You must call shape.beginEdit() before using this method.
	 * @param x A floating-point value that specifies the x coordinate of where the vertex should be positioned, in pixels.
	 * @param y A floating-point value that specifies the y coordinate of where the vertex should be positioned, in pixels.
	 */
	function setLocation(x:Float, y:Float) : Void;
	/**
	 * Flash MX 2004.
	 * Read-only. The x location of the vertex, in pixels.
	 */
	var x : Float;
	/**
	 * Flash MX 2004.
	 * Read-only. The y location of the vertex, in pixels.
	 */
	var y : Float;
}