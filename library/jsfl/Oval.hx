package jsfl;

typedef Oval =
{>Shape,
	/**
	 * Flash CS3 Professional.
	 * Read-only property; a Boolean value that specifies whether the Close Path check box in the Property inspector is selected. If the start angle and end angle values for the object are the same, setting this property has no effect until the values change.
	 * 
	 * To set this value, use document.setOvalObjectProperty().
	 */
	var closePath : Bool;
	/**
	 * Flash CS3 Professional.
	 * Read-only property; a float value that specifies the end angle of the Oval object. Acceptable values are from 0 to 360.
	 * 
	 * To set this value, use document.setOvalObjectProperty().
	 */
	var endAngle : Float;
	/**
	 * Flash CS3 Professional.
	 * Read-only property; a float value that specifies the inner radius of the Oval object as a percentage. Acceptable values are from 0 to 99.
	 * 
	 * To set this value, use document.setOvalObjectProperty().
	 */
	var innerRadius : Float;
	/**
	 * Flash CS3 Professional.
	 * Read-only property; a float value that specifies the start angle of the Oval object. Acceptable values are from 0 to 360.
	 * 
	 * To set this value, use document.setOvalObjectProperty().
	 */
	var startAngle : Float;
}