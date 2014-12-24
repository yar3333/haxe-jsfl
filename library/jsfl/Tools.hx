package jsfl;

typedef Tools =
{
	/**
	 * Read-only. Returns the ToolObj object for the currently active tool.
	 */
	var activeTool : ToolObj;
	/**
	 * Read-only. A Boolean value that identifies if the Alt key is being pressed. The value is true if the Alt key ispressed, and false otherwise.
	 */
	var altIsDown : Bool;
	/**
	 * Read-only. A Boolean value that is true if the Control key is pressed; false otherwise.
	 */
	var ctlIsDown : Bool;
	/**
	 * Read-only. A Boolean value that is true if the left mouse button is currently down; false otherwise.
	 */
	var mouseIsDown : Bool;
	/**
	 * Read-only. A point that represents the position of the last mouse-down event on the Stage. Thetools.penDownLoc property comprises two properties, x and y, corresponding to the x,y location of the mousepointer.
	 */
	var penDownLoc : JSFLPoint;
	/**
	 * Read-only. A point that represents the current location of the mouse pointer. The tools.penLoc propertycomprises two properties, x and y, corresponding to the x,y location of the mouse pointer.
	 */
	var penLoc : JSFLPoint;
	/**
	 * Read-only. A Boolean value that is true if the Shift key is pressed; false otherwise.
	 */
	var shiftIsDown : Bool;
	/**
	 * Read-only. An array of ToolObj objects (see ToolObj object).
	 */
	var toolObjs : Array<ToolObj>;
	
	/**
	 * Takes two points and returns a new adjusted or constrained point. If the Shift key is pressed when thecommand is run, the returned point is constrained to follow either a 45┬║  constrain (useful for something such as a linewith an arrowhead) or to constrain an object to maintain its aspect ratio (such as pulling out a perfect square with theRectangle tool).
	 * @pt1 Points that specify the starting-click point and the drag-to point.
	 * @pt2 Points that specify the starting-click point and the drag-to point.
	 */
	function constrainPoint(pt1:JSFLPoint, pt2:JSFLPoint) : JSFLPoint;
	/**
	 * Returns the most recently pressed key.
	 */
	function getKeyDown() : Int;
	/**
	 * Sets the pointer to a specified appearance.
	 * @placeholder An integer that defines the pointer appearance, as described in the following list:
	 */
	function setCreatingBbox(placeholder:Int) : Void;
	/**
	 * Sets the pointer to a specified appearance.
	 * @cursor An integer that defines the pointer appearance, as described in the following list:
	 */
	function setCursor(cursor:Int) : Void;
	/**
	 * Takes a point as input and returns a new point that may be adjusted or snapped to the nearest geometric object.If snapping is disabled in the View menu in the Flash user interface, the point returned is the original point.
	 * @pt Specifies the location of the point for which you want to return a snap point.
	 */
	function snapPoint(pt:JSFLPoint) : JSFLPoint;
}