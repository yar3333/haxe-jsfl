package jsfl;

typedef Parameter =
{
	/**
	 * A string that specifies the category property for the screen parameter or componentInstance parameter.This property provides an alternative way of presenting a list of parameters. This functionality is not available throughthe Flash user interface.
	 */
	var category : String;
	/**
	 * The value of the selected list item. This property is valid only if parameter.valueType is "List".
	 */
	var listIndex : Int;
	/**
	 * Read-only. A string that specifies the name of the parameter.
	 */
	var name : String;
	/**
	 * Corresponds to the Value field in the Parameters tab of the Component inspector, the Parameters tab of theProperty inspector, or the screen Property inspector. The type of the value property is determined by the valueTypeproperty for the parameter (see parameter.valueType).
	 */
	var value : Dynamic;
	/**
	 * Read-only. A string that indicates the type of the screen or component parameter. The type can be one of thefollowing values: "Default", "Array", "Object", "List", "String", "Number", "Boolean", "Font Name","Color", "Collection", "Web Service URL", or "Web Service Operation".
	 */
	var valueType : String;
	/**
	 * Specifies where the parameter is displayed. If the value of this property is 0 (nonverbose), the parameter isdisplayed only in the Component inspector. If it is 1 (verbose), the parameter is displayed in the Component inspectorand in the Parameters tab of the Property inspector.
	 */
	var verbose : Int;
	
	/**
	 * Inserts an item in a list, object, or array. If a parameter is a list, object, or array, the value property is an array.
	 * @index A zero-based integer index that indicates where the item will be inserted in the list, object, or array. If the index
	 * @name A string that specifies the name of the item to insert. This is a required parameter for object parameters.
	 * @value A string that specifies the value of the item to insert.
	 * @type A string that specifies the type of item to insert.
	 */
	function insertItem(index:Int, name:String, value:String, type:String) : Void;
	/**
	 * Removes an element of the list, object, or array type of a screen or component parameter.
	 * @index The zero-based integer index of the item to be removed from the screen or component property.
	 */
	function removeItem(index:Int) : Void;
}