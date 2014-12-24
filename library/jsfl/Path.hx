package jsfl;

typedef Path =
{
	/**
	 * Read-only. An integer representing the number of points in the path. A new path has 0 points.
	 */
	var nPts : Int;
	
	/**
	 * Appends a cubic B├йzier curve segment to the path.
	 * @xAnchor A floating-point number that specifies the x position of the first control point.
	 * @yAnchor A floating-point number that specifies the y position of the first control point.
	 * @x2 A floating-point number that specifies the x position of the second control point.
	 * @y2 A floating-point number that specifies the y position of the second control point.
	 * @x3 A floating-point number that specifies the x position of the third control point.
	 * @y3 A floating-point number that specifies the y position of the third control point.
	 * @x4 A floating-point number that specifies the x position of the fourth control point.
	 * @y4 A floating-point number that specifies the y position of the fourth control point.
	 */
	function addCubicCurve(xAnchor:Float, yAnchor:Float, x2:Float, y2:Float, x3:Float, y3:Float, x4:Float, y4:Float) : Void;
	/**
	 * Appends a quadratic B├йzier segment to the path.
	 * @xAnchor A floating-point number that specifies the x position of the first control point.
	 * @yAnchor A floating-point number that specifies the y position of the first control point.
	 * @x2 A floating-point number that specifies the x position of the second control point.
	 * @y2 A floating-point number that specifies the y position of the second control point.
	 * @x3 A floating-point number that specifies the x position of the third control point.
	 * @y3 A floating-point number that specifies the y position of the third control point.
	 */
	function addCurve(xAnchor:Float, yAnchor:Float, x2:Float, y2:Float, x3:Float, y3:Float) : Void;
	/**
	 * Adds a point to the path.
	 * @x A floating-point number that specifies the x position of the point.
	 * @y A floating-point number that specifies the y position of the point.
	 */
	function addPoint(x:Float, y:Float) : Void;
	/**
	 * Removes all points from the path.
	 */
	function clear() : Void;
	/**
	 * Appends a point at the location of the first point of the path and extends the path to that point, which closesthe path. If the path has no points, no points are added.
	 */
	function close() : Void;
	/**
	 * Creates a shape on the Stage by using the current stroke and fill settings. The path is cleared after the shape iscreated. This method has two optional parameters for suppressing the fill and stroke of the resulting shape object. Ifyou omit these parameters or set them to false, the current values for fill and stroke are used.
	 * @bSuppressFill A Boolean value that, if set to true, suppresses the fill that would be applied to the shape. The default
	 * @bSupressStroke A Boolean value that, if set to true, suppresses the stroke that would be applied to the shape. The
	 */
	function makeShape(?bSuppressFill:Bool, ?bSupressStroke:Bool) : Void;
	/**
	 * Starts a new contour in the path.
	 */
	function newContour() : Void;
}