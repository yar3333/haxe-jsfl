package jsfl;

typedef Item =
{
	/**
	 * Flash MX 2004.
	 * Adds specified data to a library item.
	 * @param name A string that specifies the name of the data.
	 * @param type A string that specifies the type of data. Valid types are "integer", "integerArray", "double",
	 * @param data The data to add to the specified library item. The type of data depends on the value of the type parameter. For
	 */
	function addData(name:String, type:String, data:Dynamic) : Void;
	/**
	 * Flash MX 2004.
	 * Retrieves the value of the specified data.
	 * @param name A string that specifies the name of the data to retrieve.
	 */
	function getData(name:String) : Dynamic;
	/**
	 * Flash Professional CC.
	 * Indicates whether publishing of the specified persistent data is enabled for the specified format on a specified library item.
	 * @param name A string that contains the name of the persistent data item, as specified in item.addData().
	 * @param format A string that specifies the publishing format. Note: _EMBED_SWF_ is a special built-in publishing format for persistent data. If set, the persistent data is embedded in the SWF file every time a document is published. The persistent data can then be accessed via ActionScript with the .metaData property. This feature applies to SWF version 19 (Flash Player 11.6) and above and only for symbol instances onstage. Other custom publishing formats may be specified for custom JSFL scripts if getPublishPersistentData() is called with the same format.
	 * @return A Boolean value that indicates whether publishing of the specified persistent data is enabled for the specified format on this library item.
	 */
	function getPublishData(name:String, format:String) :Bool;
	/**
	 * Flash MX 2004.
	 * Determines whether the library item has the named data.
	 * @param name A string that specifies the name of the data to check for in the library item.
	 */
	function hasData(name:String) : Bool;
	/**
	 * Flash MX 2004.
	 * Read-only. A string that specifies the type of element. The value is one of the following: "undefined","component", "movie clip", "graphic", "button", "folder", "font", "sound", "bitmap", "compiled clip","screen", or "video". If this property is "video", you can determine the type of video; see videoItem.videoType.
	 */
	var itemType : ItemType;
	/**
	 * Flash CS3 Professional.
	 * A string that specifies the ActionScript 3.0 class that will be associated with the symbol. The value specifiedhere appears in the Linkage dialog box in the authoring environment, and in other dialog boxes that include theLinkage dialog box controls, such as the Symbol Properties dialog box. (To specify this value for an ActionScript 2.0class, use item.linkageClassName.)If the base class is the default for the symbol type (for example, "flash.display.MovieClip" for movie clips,"flash.display.SimpleButton" for buttons, and so on), this property is an empty string (""). Similarly, to make an itemthe default base class, set this value to an empty string.When you set this value, none of the checks performed by the Linkage dialog box are performed, and no errors arethrown if Flash is unable to set the base class to the specified value. For example, setting this value in the Linkage dialogbox forces checks to make sure that the base class can be found in the FLA fileтАЩs classpath. It ensures that ActionScript3.0 is chosen in the Flash tab of the Publish Settings dialog box, and so on. These checks are not performed when youset this property in a script.
	 */
	var linkageBaseClass : String;
	/**
	 * Flash MX 2004.
	 * A string that specifies the ActionScript 2.0 class that will be associated with the symbol. (To specify this valuefor an ActionScript 3.0 class, use item.linkageBaseClass.)For this property to be defined, the item.linkageExportForAS and/or item.linkageExportForRS properties mustbe set to true, and the item.linkageImportForRS property must be set to false.
	 */
	var linkageClassName : String;
	/**
	 * Flash MX 2004.
	 * A Boolean value. If this property is true, the item is exported for ActionScript. You can also set theitem.linkageExportForRS and item.linkageExportInFirstFrame properties to true.If you set this property to true, the item.linkageImportForRS property must be set to false. Also, you must specifyan identifier (item.linkageIdentifier) and a URL (item.linkageURL).
	 */
	var linkageExportForAS : Bool;
	/**
	 * Flash MX 2004.
	 * A Boolean value. If this property is true, the item is exported for run-time sharing. You can also set theitem.linkageExportForAS and item.linkageExportInFirstFrame properties to true.If you set this property to true, the item.linkageImportForRS property must be set to false. Also, you must specifyan identifier (item.linkageIdentifier) and a URL (item.linkageURL).
	 */
	var linkageExportForRS : Bool;
	/**
	 * Flash MX 2004.
	 * A Boolean value. If true, the item is exported in the first frame; if false, the item is exported in the frameof the first instance. If the item does not appear on the Stage, it isnтАЩt exported.This property can be set to true only when item.linkageExportForAS and/or item.linkageExportForRS are setto true.
	 */
	var linkageExportInFirstFrame : Bool;
	/**
	 * Flash MX 2004.
	 * A string that specifies the name Flash will use to identify the asset when linking to the destination SWF file.Flash ignores this property if item.linkageImportForRS, item.linkageExportForAS, anditem.linkageExportForRS are set to false. Conversely, this property must be set when any of those properties areset to true.
	 */
	var linkageIdentifier : String;
	/**
	 * Flash MX 2004.
	 * A Boolean value: if true, the item is imported for run-time sharing. If this property is set to true, bothitem.linkageExportForAS and item.linkageExportForRS must be set to false. Also, you must specify anidentifier (item.linkageIdentifier) and a URL (item.linkageURL).
	 */
	var linkageImportForRS : Bool;
	/**
	 * Flash MX 2004.
	 * A string that specifies the URL where the SWF file containing the shared asset is located. Flash ignores thisproperty if item.linkageImportForRS, item.linkageExportForAS, and item.linkageExportForRS are set tofalse. Conversely, this property must be set when any of those properties are set to true. You can specify a web URLor a filename in platform-dependent format (that is, forward slashes [/] or backward slashes [\], depending on theplatform).
	 */
	var linkageURL : String;
	/**
	 * Flash MX 2004.
	 * A string that specifies the name of the library item, which includes the folder structure. For example, ifSymbol_1 is inside a folder called Folder_1, the name property of Symbol_1 is "Folder_1/Symbol_1".
	 */
	var name : String;
	/**
	 * Flash MX 2004.
	 * Removes persistent data from the library item.
	 * @param name Specifies the name of the data to remove from the library item.
	 */
	function removeData(name:String) : Void;
	/**
	 * Enables publishing of persistent data for a library item.
	 * @param name A string that contains the name of the persistent data item, as specified in item.addData().
	 * @param format A string that specifies the publishing format. Note: _EMBED_SWF_ is a special built-in publishing format for persistent data. If set, the persistent data is embedded in the SWF file every time a document is published. The persistent data can then be accessed via ActionScript with the .metaData property. This feature applies to SWF version 19 (Flash Player 11.6) and above and only for symbol instances onstage. Other custom publishing formats may be specified for custom JSFL scripts if getPublishPersistentData() is called with the same format.
	 * @param publish A Boolean that indicates whether to enable or disable publishing of persistent data for the specified format.
	 */
	function setPublishData(name:String, format:String, publish:Bool) : Void;
}

enum abstract ItemType(String)
{
	var Undefined = "undefined";
	var Component = "component";
	var MovieClip = "movie clip";
	var Graphic = "graphic";
	var Button = "button";
	var Folder = "folder";
	var Font = "font";
	var Sound = "sound";
	var Bitmap = "bitmap";
	var CompiledClip = "compiled clip";
	var Screen = "screen";
	var Video = "video";
}