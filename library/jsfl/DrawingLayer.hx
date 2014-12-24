package jsfl;

typedef DrawingLayer =
{
	/**
	 * Puts Flash in drawing mode. Drawing mode is used for temporary drawing while the mouse button is pressed.You typically use this method only when creating extensible tools.
	 * @persistentDraw A Boolean value (optional). If set to true, it indicates that the drawing in the last frame remains on
	 */
	function beginDraw(?persistentDraw:Bool) : Void;
	/**
	 * Erases what was previously drawn using the drawingLayer and prepares for more drawing commands. Shouldbe called after drawingLayer.beginDraw(). Everything drawn between drawingLayer.beginFrame() and andrawingLayer.endFrame() remains on the Stage until you call the next beginFrame() and endFrame(). (In thiscontext, frame refers to where you start and end drawing; it does not refer to timeline frames.) You typically use thismethod only when creating extensible tools. See drawingLayer.beginDraw().
	 */
	function beginFrame() : Void;
	/**
	 * Draws a cubic curve from the current pen location using the parameters as the coordinates of the cubicsegment. You typically use this method only when creating extensible tools.
	 * @x1Ctl A floating-point value that is the x location of the first control point.
	 * @y1Ctl A floating-point value that is the y location of the first control point.
	 * @x2Ctl A floating-point value that is the x position of the middle control point.
	 * @y2Ctl A floating-point value that is the y position of the middle control point.
	 * @xEnd A floating-point value that is the x position of the end control point.
	 * @yEnd A floating-point value that is the y position of the end control point.
	 */
	function cubicCurveTo(x1Ctl:Float, y1Ctl:Float, x2Ctl:Float, y2Ctl:Float, xEnd:Float, yEnd:Float) : Void;
	/**
	 * Draws a quadratic curve segment starting at the current drawing position and ending at a specified point. Youtypically use this method only when creating extensible tools.
	 * @xCtl A floating-point value that is the x position of the control point.
	 * @yCtl A floating-point value that is the y position of the control point.
	 * @xEnd A floating-point value that is the x position of the end control point.
	 * @yEnd A floating-point value that is the y position of the end control point.
	 */
	function curveTo(xCtl:Float, yCtl:Float, xEnd:Float, yEnd:Float) : Void;
	/**
	 * Draws the path specified by the path parameter. You typically use this method only when creating extensibletools.
	 * @path A Path object to draw.
	 */
	function drawPath(path:Path) : Void;
	/**
	 * Exits drawing mode. Drawing mode is used when you want to temporarily draw while the mouse button ispressed. You typically use this method only when creating extensible tools.
	 */
	function endDraw() : Void;
	/**
	 * Signals the end of a group of drawing commands. A group of drawing commands refers to everything drawnbetween drawingLayer.beginFrame() and drawingLayer.endFrame(). The next call todrawingLayer.beginFrame() will erase whatever was drawn in this group of drawing commands. You typically usethis method only when creating extensible tools.
	 */
	function endFrame() : Void;
	/**
	 * Draws a line from the current drawing position to the point (x,y). You typically use this method only whencreating extensible tools.
	 * @x A floating-point value that is the x coordinate of the end point of the line to draw.
	 * @y A floating-point value that is the y coordinate of the end point of the line to draw.
	 */
	function lineTo(x:Float, y:Float) : Void;
	/**
	 * Sets the current drawing position. You typically use this method only when creating extensible tools.
	 * @x A floating-point value that specifies the x coordinate of the position at which to start drawing.
	 * @y A floating-point value that specifies the y coordinate of the position at which to start drawing.
	 */
	function moveTo(x:Float, y:Float) : Void;
	/**
	 * Returns a new Path object. You typically use this method only when creating extensible tools. See Path object.
	 */
	function newPath() : Path;
	/**
	 * Sets the color of subsequently drawn data. Applies only to persistent data. To use this method, the parameterpassed to drawingLayer.beginDraw() must be set to true. You typically use this method only when creatingextensible tools. See drawingLayer.beginDraw().
	 * @color The color of subsequently drawn data, in one of the following formats:
	 */
	function setColor(color:Dynamic) : Void;
}