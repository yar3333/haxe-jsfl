package jsfl;

typedef XMLUI =
{
	/**
	 * Closes the current XMLUI dialog box with an accept state, which is equivalent to the user clicking the OKbutton.
	 */
	function accept() : Void;
	/**
	 * Closes the current XMLUI dialog box with a cancel state, which is equivalent to the user clicking the Cancelbutton.
	 */
	function cancel() : Void;
	/**
	 * Retrieves the value of the specified property of the current XMLUI dialog box.
	 * @controlPropertyName A string that specifies the name of the XMLUI property whose value you want to retrieve.
	 */
	function get(controlPropertyName:String) : String;
	/**
	 * Returns the label and value of the line selected in a ListBox or ComboBox control for the control specified bycontrolPropertyName.
	 * @controlPropertyName A string that specifies the property whose control item element you want to retrieve.
	 */
	function getControlItemElement(controlPropertyName:String) : { label:String, value:String };
	/**
	 * Returns a Boolean value that specifies whether the control is enabled or disabled (dimmed).
	 * @controlID A string that specifies the ID attribute of the control whose status you want to retrieve.
	 */
	function getEnabled(controlID:String) : Bool;
	/**
	 * Returns a Boolean value that specifies whether the control is visible or hidden.
	 * @controlID A string that specifies the ID attribute of the control whose visibility status you want to retrieve.
	 */
	function getVisible(controlID:String) : Bool;
	/**
	 * Modifies the value of the specified property of the current XMLUI dialog box.
	 * @controlPropertyName A string that specifies the name of XMLUI property to modify.
	 * @value A string that specifies the value to which you want to set the XMLUI property.
	 */
	function set(controlPropertyName:String, value:String) : Void;
	/**
	 * Sets the label and value of the currently selected line in the ListBox or ComboBox control specified bycontrolPropertyName.
	 * @controlPropertyName A string that specifies the control item element to set.
	 * @elementItem A JavaScript object with a string property named label and an optional string property named value.
	 */
	function setControlItemElement(controlPropertyName:String, elementItem:{ label:String, value:String }) : Void;
	/**
	 * Clears the values of the ListBox or ComboBox control specified by controlID and replaces the list or menuitems with the label, value pairs specified by elementItemArray.
	 * @controlID A string that specifies the ID attribute of the control you want to set.
	 * @elementItemArray An array of JavaScript objects, where each object has a string property named label and an
	 */
	function setControlItemElements(controlID:String, elementItemArray:Array<{ label:String, value:String }>) : Void;
	/**
	 * Enables or disables (dims) a control.
	 * @controlID A string that specifies the ID attribute of the control you want to enable or disable.
	 * @enable A Boolean value of true if you want to enable the control, or false if you want to disable (dim) it.
	 */
	function setEnabled(controlID:String, enable:Bool) : Void;
	/**
	 * Shows or hides a control.
	 * @controlID A string that specifies the ID attribute of the control you want to show or hide.
	 * @visible A Boolean value of true if you want to show the control; false if you want to hide it.
	 */
	function setVisible(controlID:String, visible:Bool) : Void;
}