package jsfl;

typedef Edge =
{
	/**
	 * Read-only. An integer that specifies the index value of a cubic segment of the edge (seeshape.getCubicSegmentPoints()).
	 */
	var cubicSegmentIndex : Int;
	/**
	 * Read-only. An integer that represents a unique identifier for the edge.
	 */
	var id : Int;
	/**
	 * Read-only. An integer with a value of 0 or 1. A value of 1 indicates that the edge is a straight line. In that case,the middle control point bisects the line joining the two end points.
	 */
	var isLine : Int;
	/**
	 * A Stroke object.
	 */
	var stroke : Stroke;
	
	/**
	 * Gets a point object set to the location of the specified control point of the edge.
	 * @i An integer that specifies which control point of the edge to return. Specify 0 for the first control point, 1 for the
	 */
	function getControl(i:Int) : JSFLPoint;
	/**
	 * Returns a HalfEdge object.
	 * @index An integer that specifies which half edge to return. The value of index must be either 0 for the first half edge or
	 */
	function getHalfEdge(index:Int) : HalfEdge;
	/**
	 * Sets the position of the control point of the edge. You must call shape.beginEdit() before using thismethod. See shape.beginEdit().
	 * @index An integer that specifies which control point to set. Use values 0, 1, or 2 to specify the beginning, middle, and
	 * @x A floating-point value that specifies the horizontal location of the control point. If the Stage is in edit or edit-in-place
	 * @y A floating-point value that specifies the vertical location of the control point. If the Stage is in edit or edit-in-place
	 */
	function setControl(index:Int, x:Float, y:Float) : Void;
	/**
	 * Splits the edge into two pieces. You must call shape.beginEdit() before using this method.
	 * @t A floating-point value between 0 and 1 that specifies where to split the edge. A value of 0 represents one end point
	 */
	function splitEdge(t:Float) : Void;
}