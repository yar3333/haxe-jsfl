package jsfl;

typedef Item =
{
	/**
	 * Read-only. A string that specifies the type of element. The value is one of the following: "undefined","component", "movie clip", "graphic", "button", "folder", "font", "sound", "bitmap", "compiled clip","screen", or "video". If this property is "video", you can determine the type of video; see videoItem.videoType.
	 */
	var itemType : String;
	/**
	 * A string that specifies the ActionScript 3.0 class that will be associated with the symbol. The value specifiedhere appears in the Linkage dialog box in the authoring environment, and in other dialog boxes that include theLinkage dialog box controls, such as the Symbol Properties dialog box. (To specify this value for an ActionScript 2.0class, use item.linkageClassName.)If the base class is the default for the symbol type (for example, "flash.display.MovieClip" for movie clips,"flash.display.SimpleButton" for buttons, and so on), this property is an empty string (""). Similarly, to make an itemthe default base class, set this value to an empty string.When you set this value, none of the checks performed by the Linkage dialog box are performed, and no errors arethrown if Flash is unable to set the base class to the specified value. For example, setting this value in the Linkage dialogbox forces checks to make sure that the base class can be found in the FLA fileтАЩs classpath. It ensures that ActionScript3.0 is chosen in the Flash tab of the Publish Settings dialog box, and so on. These checks are not performed when youset this property in a script.
	 */
	var linkageBaseClass : String;
	/**
	 * A string that specifies the ActionScript 2.0 class that will be associated with the symbol. (To specify this valuefor an ActionScript 3.0 class, use item.linkageBaseClass.)For this property to be defined, the item.linkageExportForAS and/or item.linkageExportForRS properties mustbe set to true, and the item.linkageImportForRS property must be set to false.
	 */
	var linkageClassName : String;
	/**
	 * A Boolean value. If this property is true, the item is exported for ActionScript. You can also set theitem.linkageExportForRS and item.linkageExportInFirstFrame properties to true.If you set this property to true, the item.linkageImportForRS property must be set to false. Also, you must specifyan identifier (item.linkageIdentifier) and a URL (item.linkageURL).
	 */
	var linkageExportForAS : Bool;
	/**
	 * A Boolean value. If this property is true, the item is exported for run-time sharing. You can also set theitem.linkageExportForAS and item.linkageExportInFirstFrame properties to true.If you set this property to true, the item.linkageImportForRS property must be set to false. Also, you must specifyan identifier (item.linkageIdentifier) and a URL (item.linkageURL).
	 */
	var linkageExportForRS : Bool;
	/**
	 * A Boolean value. If true, the item is exported in the first frame; if false, the item is exported in the frameof the first instance. If the item does not appear on the Stage, it isnтАЩt exported.This property can be set to true only when item.linkageExportForAS and/or item.linkageExportForRS are setto true.
	 */
	var linkageExportInFirstFrame : Bool;
	/**
	 * A string that specifies the name Flash will use to identify the asset when linking to the destination SWF file.Flash ignores this property if item.linkageImportForRS, item.linkageExportForAS, anditem.linkageExportForRS are set to false. Conversely, this property must be set when any of those properties areset to true.
	 */
	var linkageIdentifier : String;
	/**
	 * A Boolean value: if true, the item is imported for run-time sharing. If this property is set to true, bothitem.linkageExportForAS and item.linkageExportForRS must be set to false. Also, you must specify anidentifier (item.linkageIdentifier) and a URL (item.linkageURL).
	 */
	var linkageImportForRS : Bool;
	/**
	 * A string that specifies the URL where the SWF file containing the shared asset is located. Flash ignores thisproperty if item.linkageImportForRS, item.linkageExportForAS, and item.linkageExportForRS are set tofalse. Conversely, this property must be set when any of those properties are set to true. You can specify a web URLor a filename in platform-dependent format (that is, forward slashes [/] or backward slashes [\], depending on theplatform).
	 */
	var linkageURL : String;
	/**
	 * Method; a string that specifies the name of the library item, which includes the folder structure. For example, ifSymbol_1 is inside a folder called Folder_1, the name property of Symbol_1 is "Folder_1/Symbol_1".
	 */
	var name : String;
	
	/**
	 * Adds specified data to a library item.
	 * @name A string that specifies the name of the data.
	 * @type A string that specifies the type of data. Valid types are "integer", "integerArray", "double",
	 * @data The data to add to the specified library item. The type of data depends on the value of the type parameter. For
	 */
	function addData(name:String, type:String, data:Dynamic) : Void;
	/**
	 * Retrieves the value of the specified data.
	 * @name A string that specifies the name of the data to retrieve.
	 */
	function getData(name:String) : Dynamic;
	/**
	 * Determines whether the library item has the named data.
	 * @name A string that specifies the name of the data to check for in the library item.
	 */
	function hasData(name:String) : Bool;
	/**
	 * Property; removes persistent data from the library item.
	 * @name Specifies the name of the data to remove from the library item.
	 */
	function removeData(name:String) : Void;
}