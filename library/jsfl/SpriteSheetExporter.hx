package jsfl;

/**
 * Flash Pro CS6.
 * The SpriteSheetExporter object is a subclass of the Item object.
 */
typedef SpriteSheetExporter = {>Item
	/**
	 * Property; A string indicating which algorithm to use to pack the sprite sheet. Valid values are "basic" (the default), and "maxRects".
	 */
	var algorithm:String;
	/**
	 * Property; A boolean value indicating whether the symbol frames can be rotated when packed into the sprite sheet.
	 */
	var allowRotate:Bool;
	/**
	 * Property; A boolean value indicating whether the symbol frames can be trimmed of any extra whitespace when packed into the sprite sheet. The default value is true.
	 */
	var allowTrimming:Bool;
	/**
	 * Read-only property; A string indicating the name of the application that is generating the sprite sheet. This property is provided for use by any future sprite sheet generator plugins that may be created for Flash Pro.
	 */
	var app:String;
	/**
	 * Property; A boolean value indicating whether the sprite sheet exporter should calculate the overall size of the sprite sheet on its own.
	 */
	var autoSize:Bool;
	/**
	 * Property; An integer indicating the number of pixels of padding to add around each sprite in the sprite sheet.
	 */
	var borderPadding:Int;
	/**
	 * Read-only property; A boolean value indicating whether the framework specified by the SpriteSheetExporter.layoutFormat property supports border padding.
	 */
	var canBorderPad:Bool;
	/**
	 * Read-only property; A boolean value indicating whether the framework specified by the SpriteSheetExporter.layoutFormat property may rotate symbol frames when adding them to the sprite sheet.
	 */
	var canRotate:Bool;
	/**
	 * Read-only property; A boolean value indicating whether the framework specified by the SpriteSheetExporter.layoutFormat property supports trimming extra whitespace from symbol frames when adding them to the sprite sheet.
	 */
	var canTrim:Bool;
	/**
	 * Read-only property; A boolean value indicating whether the framework specified by the SpriteSheetExporter.layoutFormat property supports shape padding.
	 */
	var canShapePad:Bool;
	/**
	 * Read-only property; A boolean value indicating whether the framework specified by the SpriteSheetExporter.layoutFormat property supports stacking duplicate symbol frames within the sprite sheet.
	 */
	var canStackDuplicateFrames:Bool;
	/**
	 *  A string value indicating the format of the sprite sheet image file. Possible values include “RGBA8888”, “RGB888x”, and “RGB8”. This property is provided for use by sprite sheet generator plugins.
	 */
	var format:String;
	/**
	 * Read-only property; A string value indicating the name of the sprite sheet image file. This property is provided for use by sprite sheet generator plugins.
	 */
	var image:String;
	/**
	 * Property; A string value indicating the format of the sprite sheet metadata. Valid values depend on the contents of the Sprite Sheet Plugin directory. “JSON” (JavaScript Object Notation) is one possible value. Your script passes the layout format’s ID string to match one of the .jsfl files defined for the Sprite Sheet plugin (located in the flashroot/Common/Configuration/Sprite Sheet Plugins folder). These files have the naming convention layoutformat.plugin.jsfl and you pass a string set to layoutformat. For example, you would set layoutFormat equal to "Starling", "cocos2D v2", or "cocos2D v3".
	 */
	var layoutFormat:String;
	/**
	 * Controls the maximum height of the generated sprite sheet when autoSize = true, clipped to a maximum value of 8192.
	 */
	var maxSheetHeight:Int;
	/**
	 * Controls the maximum width of the generated sprite sheet when autoSize = true, clipped to a maximum value of 8192.
	 */
	var maxSheetWidth:Int;
	/**
	 * Read-only property; A boolean value indicating whether all the exported symbol frames cannot fit within the currently specified size of the sprite sheet.
	 */
	var overflowed:Bool;
	/**
	 * Property; An integer value indicating how many pixels of padding should be added to each exported symbol frame when adding it to the sprite sheet.
	 */
	var shapePadding:Int;
	/**
	 * Property; An integer value specifying the height of the sprite sheet. This value is read-only if SpriteSheetExporter.autoSize is set to true.
	 */
	var sheetHeight:Int;
	/**
	 * Property; An integer value specifying the width of the sprite sheet. This value is read-only if SpriteSheetExporter.autoSize is set to true.
	 */
	var sheetWidth:Int;
	/**
	 * Property; A boolean value specifying whether the sprite sheet can stack duplicate symbol frames when adding them to the sprite sheet. The default is true.
	 */
	var stackDuplicateFrames:Bool;
	/**
	 * Read-only property; A string indicating the version number of the Flash Pro application. This property is provided for use by sprite sheet plugins.
	 */
	var version:String;
	/**
	 * Adds the specified bitmap or bitmapItem to the sprite sheet object.
	 * @param bitmap The BitmapItem or Bitmap to include in the sprite sheet.
	 */
	function addBitmap(bitmap:Dynamic):Void;
	/**
	 * Adds the specified SymbolItem or SymbolInstance to be used to generate the sprite sheet.
	 * @param symbol Object; The SymbolItem or SymbolInstance to include in the sprite sheet.
	 * @param name String; The name of the symbol instance to add to the sprite sheet.
	 * @param beginFrame The beginning frame of the symbol to include in the sprite sheet.
	 * @param endFrame The last frame of the symbol to include in the sprite sheet.
	 * @return Boolean
	 */
	function addSymbol(symbol:Dynamic, ?name:String, ?beginFrame:Int, ?endFrame):Bool;
	/**
	 * Initializes the SpriteSheetExporter to create a new sprite sheet. This method is not necessary if you create the exporter from new. It is necessary if you reuse the same exporter to make multiple sprite sheets.
	 */
	function beginExport():Void;
	/**
	 * Changes the frame range of the symbol that will be used in the sprite sheet.
	 * @param symbol Object; A SymbolItem or SymbolInstance that has already been added to the sprite sheet.
	 * @param beginFrame Optional. The beginning frame of the symbol to include in the sprite sheet.
	 * @param endFrame Optional. The last frame of the symbol to include in the sprite sheet.
	 * @return Boolean
	 */
	function changeSymbol(symbol:Dynamic, ?beginFrame:Int, ?endFrame:Int):Bool;
	/**
	 * Exports the sprite sheet into a an image file and a metadata file based on the path parameter. The return string is the metadata generated by the sprite sheet plugin or nothing if an error occurred.
	 * @param path String; A file path with no extension to be used as the base name of the exported files.
	 * @param imageFormat String or Object. A string or an object that describes the type of image format to generate.
	 * String: Valid values are either "png" or "jpg", the exporter use whatever values where last used.
     * Object: If you pass an object, it needs at least a string property "format" which is either "png" or "jpg". Optionally the object may include "backgroundColor," which is a valid color value (alpha may be included); "quality" (jpg only), which is an integer from 1 to 100; and "bitDepth" (png only) which can be 8, 24 or 32.
	 * @param writeMetaData Optional. Boolean; Whether or not to write the metadata file with the image file. The default value is true.
	 * @return String
	 */
	function exportSpriteSheet(path:String, imageFormat:Dynamic, ?writeMetaData:Bool):String;
	/**
	 * Removes the specified bitmap or bitmapItem from the sprite sheet object.
	 * @param bitmap The BitmapItem or Bitmap to remove from the sprite sheet.
	 */
	function removeBitmap(bitmap:BitmapItem):Void;
	/**
	 * Removes the specified SymbolItem or SymbolInstance from the sprite sheet.
	 * @param symbol Object; The SymbolItem or SymbolInstance to remove from the sprite sheet.
	 */
	function removeSymbol(symbol:Dynamic):Bool;
}