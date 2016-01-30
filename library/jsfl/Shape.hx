package jsfl;

typedef Shape =
{>Element,
	/**
	 * Flash MX 2004.
	 * Defines the start of an edit session. You must use this method before issuing any commands that change theShape object or any of its subordinate parts.
	 */
	function beginEdit() : Void;
	/**
	 * Flash MX 2004.
	 * Read-only. An array of Contour objects for the shape (see Contour object).
	 */
	var contours : Array<Contour>;
	/**
	 * Flash MX 2004.
	 * Deletes the specified edge. You must call shape.beginEdit() before using this method.
	 * @param index A zero-based index that specifies the edge to delete from the shape.edges array. This method changes the length
	 */
	function deleteEdge(index:Int) : Void;
	/**
	 * Flash MX 2004.
	 * Read-only. An array of Edge objects (see Edge object).
	 */
	var edges : Array<Edge>;
	/**
	 * Flash MX 2004.
	 * Defines the end of an edit session for the shape. All changes made to the Shape object or any of its subordinateparts will be applied to the shape. You must use this method after issuing any commands that change the Shape objector any of its subordinate parts.
	 */
	function endEdit() : Void;
	/**
	 * Flash CS4 Professional.
	 * Returns an array of points that define a cubic curve.
	 * @param cubicSegmentIndex An integer that specifies the cubic segment for which points are returned.
	 */
	function getCubicSegmentPoints(cubicSegmentIndex:Int) : Array<JSFLPoint>;
	/**
	 * Flash 8.
	 * Read-only. If true, the shape is a drawing object.
	 */
	var isDrawingObject : Bool;
	/**
	 * Flash CS6.
	 * Read-only property; if true, the shape is floating above the parent frame’s (or group’s) shape. Also, if true, this type of shape will have it's own matrix, similar to a drawing object.
	 */
	var isFloating : Bool;
	/**
	 * Flash MX 2004.
	 * Read-only. If true, the shape is a group. A group can contain different types of elements, such as textelements and symbols. However, the group itself is considered a shape, and you can use the shape.isGroup propertyno matter what types of elements the group contains.
	 */
	var isGroup : Bool;
	/**
	 * Flash CS3 Professional.
	 * Read-only. If true, the shape is a primitive Oval object (was created using the Oval Primitive tool).
	 */
	var isOvalObject : Bool;
	/**
	 * Flash CS3 Professional.
	 * Read-only. If true, the shape is a primitive Rectangle object (was created using the Rectangle Primitive tool).
	 */
	var isRectangleObject : Bool;
	/**
	 * Flash CS4 Professional.
	 * Read-only. An array of objects in the currently selected group. This property is available only if the value ofshape.isGroup is true). Raw shapes in the group are not included in the shape.members array.For example, if the group contains three drawing objects and three raw shapes, the shape.members array containsthree entries, one for each of the drawing objects. If the group contains only raw shapes, the array is empty.
	 */
	var members : Array<Dynamic>;
	/**
	 * Flash CS4 Professional.
	 * Read-only. The number of cubic segments in the shape.
	 */
	var numCubicSegments : Int;
	/**
	 * Flash MX 2004.
	 * Read-only. An array of Vertex objects (see Vertex object).
	 */
	var vertices : Array<Vertex>;
}