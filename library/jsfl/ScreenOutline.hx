package jsfl;

typedef ScreenOutline =
{
	function copyScreenFromFile(fileURI:String, ?screenName:String) : Void;
	var currentScreen : Screen;
	function deleteScreen(screenName:String) : Void;
	function duplicateScreen(?screenName:String) : Void;
	function getSelectedScreens() : Array<Screen>;
	function insertNestedScreen(name:String, ?referenceScreen:String, ?screenTypeName:String) : Screen;
	function insertScreen(name:String, ?referenceScreen:String, ?screenTypeName:String) : Screen;
	function moveScreen(screenToMove:String, referenceScreen:String, position:String) : Bool;
	function renameScreen(newScreenName:String, ?oldScreenName:String, ?bDisplayError:Bool) : Bool;
	var rootScreen : Screen;
	var screens : Array<Screen>;
	function setCurrentScreen(name:String) : Void;
	function setScreenProperty(property:String, value:Dynamic) : Void;
	function setSelectedScreens(selection:Array<String>,?bReplaceCurrentSelection:Bool) : Void;
}