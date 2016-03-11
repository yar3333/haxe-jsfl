package jsfl;

typedef ComponentsPanel =
{
	/**
	 * Flash MX 2004.
	 * Adds the specified component to the document at the specified position.
	 * @param position A point (for example, {x:0, y:100}) that specifies the location at which to add the component. Specify
	 * @param categoryName A string that specifies the name of the component category (for example, "Data"). The valid category
	 * @param componentName A string that specifies the name of the component in the specified category (for example,
	 */
	function addItemToDocument(position:JSFLPoint, categoryName:String, componentName:String) : Void;
	/**
	 * Flash 8.
	 * Refreshes the Components panelтАЩs list of components.
	 */
	function reload() : Bool;
}