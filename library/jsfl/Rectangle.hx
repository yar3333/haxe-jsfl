package jsfl;

typedef Rectangle =
{> Shape,
	/**
	 * Flash CS3 Professional.
	 * Read-only property; a float value that sets the radius of the bottom-left corner of the Rectangle object. If RectangleObject.lockFlag is true, trying to set this value has no effect.
	 * 
	 * To set this value, use document.setRectangleObjectProperty().
	 */
	var bottomLeftRadius : Float;
	/**
	 * Flash CS3 Professional.
	 * Read-only property; a float value that sets the radius of the bottom-right corner of the Rectangle object. If RectangleObject.lockFlag is true, trying to set this value has no effect.
	 * 
	 * To set this value, use document.setRectangleObjectProperty().
	 */
	var bottomRightRadius : Float;
	/**
	 * Flash CS3 Professional.
	 * Read-only property; a Boolean value that determines whether different corners of the rectangle can have different radius values. If this value is true, all corners have the value assigned to RectangleObject.topLeftRadius. If it is false, each corner radius can be set independently.
	 * 
	 * To set this value, use document.setRectangleObjectProperty().
	 */
	var lockFlag : Bool;
	/**
	 * Flash CS3 Professional.
	 * Read-only property; a float value that sets the radius of all corners of the rectangle (if RectangleObject.lockFlag is true) or that sets only the radius of the top-left corner (if RectangleObject.lockFlag is false).
	 * 
	 * To set this value, use document.setRectangleObjectProperty().
	 */
	var topLeftRadius : Float;
	/**
	 * Flash CS3 Professional.
	 * Read-only property; a float value that sets the radius of the top-right corner of the Rectangle object. If RectangleObject.lockFlag is true, trying to set this value has no effect.
	 * 
	 * To set this value, use document.setRectangleObjectProperty().
	 */
	var topRightRadius : Float;
}