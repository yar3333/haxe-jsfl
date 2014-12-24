package jsfl;

typedef ComponentsPanel =
{
	/**
	 * Adds the specified component to the document at the specified position.
	 * @position A point (for example, {x:0, y:100}) that specifies the location at which to add the component. Specify
	 * @categoryName A string that specifies the name of the component category (for example, "Data"). The valid category
	 * @componentName A string that specifies the name of the component in the specified category (for example,
	 */
	function addItemToDocument(position:JSFLPoint, categoryName:String, componentName:String) : Void;
	/**
	 * Refreshes the Components panelтАЩs list of components.
	 */
	function reload() : Bool;
}