package jsfl;

typedef Element =
{
	/**
	 * Read-only. An integer that has a value greater than 0 for the depth of the object in the view. The drawing orderof objects on the Stage specifies which one is on top of the others. Object order can also be managed with the Modify&gt; Arrange menu item.
	 */
	var depth : Int;
	/**
	 * Read-only. A string that represents the type of the specified element. The value is one of the following:"shape", "text", "instance", or "shapeObj". A "shapeObj" is created with an extensible tool.
	 */
	var elementType : String;
	/**
	 * A float value that specifies the height of the element in pixels.Do not use this property to resize a text field. Instead, select the text field and use document.setTextRectangle().Using this property with a text field scales the text.
	 */
	var height : Float;
	/**
	 * Read-only. Represents the Layer object on which the element is located.
	 */
	var layer : Layer;
	/**
	 * Read-only. A float value that represents the left side of the element. The value of element.left is relative tothe upper left of the Stage for elements that are in a scene and is relative to the symbolтАЩs registration point (also originpoint or zero point) if the element is stored within a symbol. Use document.setSelectionBounds() ordocument.moveSelectionBy() to set this property.
	 */
	var left : Float;
	/**
	 * A Boolean value: true if the element is locked; false otherwise. If the value of element.elementType is"shape", this property is ignored.
	 */
	var locked : Bool;
	/**
	 * A Matrix object. A matrix has properties a, b, c, d, tx, and ty. The a, b, c, and d properties are floating-pointvalues; the tx and ty properties are coordinates. See Matrix object.
	 */
	var matrix : Matrix;
	/**
	 * A string that specifies the name of the element, normally referred to as the Instance name. If the value ofelement.elementType is "shape", this property is ignored. See element.elementType.
	 */
	var name : String;
	/**
	 * An integer or float value between -180 and 180 that specifies the objectтАЩs clockwise rotation, in degrees.
	 */
	var rotation : Float;
	/**
	 * A float value that specifies the x scale value of symbols, drawing objects, and primitive rectangles and ovals.A value of 1 indicates 100 percent scale.
	 */
	var scaleX : Float;
	/**
	 * A float value that specifies the y scale value of symbols, drawing objects, and primitive rectangles and ovals.A value of 1 indicates 100 percent scale.
	 */
	var scaleY : Float;
	/**
	 * A Boolean value that specifies whether the element is selected (true) or not (false).
	 */
	var selected : Bool;
	/**
	 * A float value between -180 and 180 that specifies the x skew value of symbols, drawing objects, and primitiverectangles and ovals.
	 */
	var skewX : Float;
	/**
	 * A float value between -180 and 180 that specifies the y skew value of symbols, drawing objects, and primitiverectangles and ovals.
	 */
	var skewY : Float;
	/**
	 * Read-only. Top side of the element. The value of element.top is relative to the upper left of the Stage forelements that are in a scene and is relative to the symbolтАЩs registration point if the element is stored within a symbol.Use document.setSelectionBounds() or document.moveSelectionBy() to set this property.
	 */
	var top : Float;
	/**
	 * A floating-point number that specifies the x value of the selected elementтАЩs transformation point, within thecoordinate system of the element's parent. Setting this property to a new value moves the element. By contrast, theelement.setTransformationPoint() method moves the transformation point but does not move the element.
	 */
	var transformX : Float;
	/**
	 * A floating-point number that specifies the y value of the selected elementтАЩs transformation point, within thecoordinate system of the elementтАЩs parent. Setting this property to a new value moves the element. By contrast, theelement.setTransformationPoint() method moves the transformation point but does not move the element.
	 */
	var transformY : Float;
	/**
	 * A float value that specifies the width of the element in pixels.Do not use this property to resize a text field. Instead, select the text field and use document.setTextRectangle().Using this property with a text field scales the text.
	 */
	var width : Float;
	/**
	 * A float value that specifies the x value of the selected elementтАЩs registration point.
	 */
	var x : Float;
	/**
	 * A float value that specifies the y value of the selected elementтАЩs registration point.
	 */
	var y : Float;
	
	/**
	 * Retrieves the value of the data specified by the name parameter. The type of data depends on the type of thedata that was stored (see element.setPersistentData()). Only symbols and bitmaps support persistent data.
	 * @name A string that identifies the data to be returned.
	 */
	function getPersistentData(name:String) : Dynamic;
	/**
	 * Gets the value of the specified elementтАЩs transformation point.Transformation points are relative to different locations, depending on the type of item selected. For moreinformation, see element.setTransformationPoint().
	 */
	function getTransformationPoint() : JSFLPoint;
	/**
	 * Determines whether the specified data has been attached to the specified element. Only symbols and bitmapssupport persistent data.
	 * @name A string that specifies the name of the data item to test.
	 */
	function hasPersistentData(name:String) : Bool;
	/**
	 * Removes any persistent data with the specified name that has been attached to the object. Only symbols andbitmaps support persistent data.
	 * @name A string that specifies the name of the data to remove.
	 */
	function removePersistentData(name:String) : Void;
	/**
	 * Stores data with an element. The data is available when the FLA file containing the element is reopened. Onlysymbols and bitmaps support persistent data.
	 * @name A string that specifies the name to associate with the data. This name is used to retrieve the data.
	 * @type A string that defines the type of the data. The allowable values are "integer", "integerArray", "double",
	 * @value Specifies the value to associate with the object. The data type of value depends on the value of the type
	 */
	function setPersistentData(name:String, type:String, value:Dynamic) : Void;
	/**
	 * Sets the position of the elementтАЩs transformation point.This method is almost identical to document.setTransformationPoint(). It is different in the following ways:тАв  The transformation point for drawing objects, primitive objects, and groups is set relative to the center of theelement or group, not relative to the Stage.тАв  You can set transformation points for elements without first selecting them.This method moves the transformation point but does not move the element. By contrast, theelement.transformX and element.transformY properties move the element.
	 * @transformationPoint A point (for example, {x:10, y:20}, where x and y are floating-point numbers) that
	 */
	function setTransformationPoint(transformationPoint:JSFLPoint) : Void;
}