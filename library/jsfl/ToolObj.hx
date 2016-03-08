package jsfl;

typedef ToolObj =
{
	/**
	 * Flash MX 2004.
	 * Read-only. An integer that specifies the depth of the tool in the pop-up menu in the Tools panel. This propertyis used only when creating extensible tools.
	 */
	var depth : Int;
	/**
	 * Flash MX 2004.
	 * Enables or disables the specified control in a Property inspector. Used only when creating extensible tools.
	 * @param control A string that specifies the name of the control to enable or disable. Legal values depend on the Property
	 * @param bEnable A Boolean value that determines whether to enable (true) or disable (false) the control.
	 */
	function enablePIControl(control:String, bEnable:Bool) : Void;
	/**
	 * Flash MX 2004.
	 * Read-only. An integer with a value of -1. This property is used only when you create extensible tools. AniconID value of -1 means that Flash will not try find an icon for the tool. Instead, the script for the tool should specifythe icon to display in the Tools panel; see toolObj.setIcon().
	 */
	var iconID : Int;
	/**
	 * Flash MX 2004.
	 * Read-only. An integer that specifies the position of the tool in the Tools panel. This property is used only whenyou create extensible tools.
	 */
	var position : Int;
	/**
	 * Flash MX 2004.
	 * Identifies a PNG file to use as a tool icon in the Tools panel. This method is used only when you createextensible tools.
	 * @param file A string that specifies the name of the PNG file to use as the icon. The PNG file must be placed in the same folder
	 */
	function setIcon(file:String) : Void;
	/**
	 * Flash MX 2004.
	 * Sets the string that appears in the pop-up menu as the name for the tool. This method is used only when youcreate extensible tools.
	 * @param menuStr A string that specifies the name that appears in the pop-up menu as the name for the tool.
	 */
	function setMenuString(menuStr:String) : Void;
	/**
	 * Flash MX 2004.
	 * Associates an XML file with the tool. The file specifies the options to appear in a modal panel that is invokedby an Options button in the Property inspector. You would usually use this method in the configureTool() functioninside your JSFL file. See configureTool().For example, the PolyStar.xml file specifies three options associated with the Polygon tool:&lt;properties&gt;&lt;property name="Style"variable="style"list="polygon,star"defaultValue="0"type="Strings"/&gt;&lt;property name="Number of Sides"variable="nsides"min="3"max="32"defaultValue="5"type="Number" /&gt;&lt;property name="Star point size"variable="pointParam"min="0"max="1"defaultValue=".5"type="Double" /&gt;&lt;/properties&gt;
	 * @param xmlFile A string that specifies the name of the XML file that has the description of the toolтАЩs options. The XML file
	 */
	function setOptionsFile(xmlFile:String) : Void;
	/**
	 * Flash MX 2004.
	 * Specifies which Property inspector should be used when the tool is activated. This method is used only whenyou create extensible tools. Acceptable values are "shape" (the default), "text", and "movie".
	 * @param pi A string that specifies the Property inspector to invoke for this tool.
	 */
	function setPI(pi:String) : Void;
	/**
	 * Flash MX 2004.
	 * Assigns a name to the tool for the configuration of the Tools panel. This method is used only when you createextensible tools. The name is used only by the XML layout file that Flash reads to construct the Tools panel. The namedoes not appear in the Flash user interface.
	 * @param name A string that specifies the name of the tool.
	 */
	function setToolName(name:String) : Void;
	/**
	 * Flash MX 2004.
	 * Sets the tooltip that appears when the mouse is held over the tool icon. This method is used only when youcreate extensible tools.
	 * @param toolTip A string that specifies the tooltip to use for the tool.
	 */
	function setToolTip(toolTip:String) : Void;
	/**
	 * Flash MX 2004.
	 * Shows or hides a control in the Property inspector. This method is used only when you create extensible tools.
	 * @param control A string that specifies the name of the control to show or hide. This method is used only when you create
	 * @param bShow A Boolean value that determines whether to show or hide the specified control (true shows the control; false
	 */
	function showPIControl(control:String, bShow:Bool) : Void;
	/**
	 * Flash MX 2004.
	 * Called in the configureTool() method of an extensible toolтАЩs JavaScript file to indicate that the freetransform handles should appear when the tool is active. This method is used only when you create extensible tools.
	 * @param bShow A Boolean value that determines whether to show or hide the free transform handles for the current tool (true
	 */
	function showTransformHandles(bShow:Bool) : Void;
}