package jsfl;

typedef Contour =
{
	/**
	 * A Fill object.
	 */
	var fill : Fill;
	/**
	 * Read-only. The value is true if the contour encloses an area; false otherwise.
	 */
	var interior : Bool;
	/**
	 * Read-only. An integer indicating the orientation of the contour. The value of the integer is -1 if the orientationis counterclockwise, 1 if it is clockwise, and 0 if it is a contour with no area.
	 */
	var orientation : Int;
	
	/**
	 * Returns a HalfEdge object on the contour of the selection.
	 */
	function getHalfEdge() : HalfEdge;
}