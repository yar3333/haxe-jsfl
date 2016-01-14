package jsfl;

@:native("fl") extern class Flash
{
	/**
	 * Flash CS3 Professional.
	 * Read-only property; an actionsPanel object, which represents the currently displayed Actions panel. For information on using this property, see actionsPanel object.
	 */
	static var actionsPanel : ActionsPanel;
	
	static var activeEffect : Effect;
	
	/**
	 * Flash CS3 Professional. The prePublish, postPublish, selectionChanged, and dpiChanged events are new in Flash Professional CC.
	 * Registers a function to be called when a specific event occurs. Note that you can define multiple listeners for the same event.
	 *
	 * When using this method, be aware that if the event occurs frequently (as might be the case with mouseMove) and the function takes a long time to run, your application might hang or otherwise enter an error state. Additionally, the prePublish and postPublish events should have minimal code and execute quickly.
	 * @param eventType A string that specifies the event type to pass to this callback function. Acceptable values are "documentNew", "documentOpened", "documentClosed", "mouseMove", "documentChanged", "layerChanged""timelineChanged", "frameChanged", “prePublish”, “postPublish”, “selectionChanged”, and dpiChanged.The documentChanged value doesn’t mean that the content of a document has changed; it means that a different document is now in the foreground. That is, fl.getDocumentDOM() will return a different value than it did before this event occurred.
	 * @param callbackFunction The name of the function you want to execute every time the event occurs.
	 * @return An integer that identifies the event listener. Use this identifier when calling fl.removeEventListener().
	 */
	static function addEventListener(eventType:String, callbackFunction:Void->Void) : Void;
	
	/**
	 * Flash CS3 Professional.
	 * A string that corresponds to the global Classpath setting in the ActionScript 3.0 Settings dialog box. Items in the string are delimited by semi-colons. To view or change ActionScript 2.0 Classpath settings, use fl.packagePaths - dropped.
	 */
	static var as3PackagePaths : String;
	
	/**
	 * Flash MX 2004.
	 * Opens a File Open or File Save system dialog box and lets the user specify a file to be opened or saved.
	 * @param browseType A string that specifies the type of file browse operation. Valid values are "open", "select" or "save". The values "open" and "select" open the system File Open dialog box. Each value is provided for compatibility with Dreamweaver. The value "save" opens a system File Save dialog box.
	 * title An optional string that specifies the title for the File Open or File Save dialog box. If this parameter is omitted, a default value is used. This parameter is optional.
	 * @param title An optional string that specifies a file description, for example:
	 * FLA Document (*.fla) 
	 * ActionScript File (*.as)
	 * @param previewArea An optional string that specifies a filter, such that only files that match the filters are displayed in the dialog, for example:
	 * "fla" 
     * "fla;as" 
     * "jsfl;fla;as"
	 * @return The URL of the file, expressed as a file:/// URI; returns null if the user cancels out of the dialog box.
	 */
	static function browseForFileURL(browseType:String, ?title:String, ?previewArea:Void) : String;
	
	/**
	 * Flash 8.
	 * Displays a Browse for Folder dialog box and lets the user select a folder.
	 * @param description An optional string that specifies the description of the Browse For Folder dialog box. If this parameter is omitted, the dialog box title is “Select Folder.”
	 * @return The URL of the folder, expressed as a file:/// URI; returns null if the user cancels out of the dialog box.
	 */
	static function browseForFolderURL(?description:String) : String;
	
	/**
	 * Flash CS5.5 Professional.
	 * Empties the publish cache.
	 */
	static function clearPublishCache() : Void;
	
	/**
	 * Flash CS3 Professional.
	 * Copies the specified string to the Clipboard.
     *
     * To copy the current selection to the Clipboard, use document.clipCopy().
	 * @param string A string to be copied to the Clipboard.
	 */
	static function clipCopyString(string:String) : Void;
	
	/**
	 * Flash MX 2004.
	 * Closes all open files (FLA files, SWF files, JSFL files, and so on). If you want to close all open files without saving changes to any of them, pass false for bPromptToSave. This method does not terminate the application.
	 * @param bPromptToSave An optional Boolean value that specifies whether to display the Save dialog box for any files that have been changed since they were previously saved, or the Save As dialog box for files that have never been saved. The default value is true.
	 */
	static function closeAll(?bPromptToSave:Bool) : Void;
	
	/**
	 * Flash CS3 Professional.
	 * Closes all the SWF files that were opened with Control > Test Movie.
	 * @return A Boolean value: true if one or more movie windows were open; false otherwise.
	 */
	static function closeAllPlayerDocuments() : Bool;
	
	/**
	 * Flash MX 2004.
	 * Сloses the specified document.
	 * @param documentObject A Document object. If documentObject refers to the active document, the Document window might not close until the script that calls this method finishes executing.
	 * @param bPromptToSaveChanges A Boolean value. When bPromptToSaveChanges is false, the user is not prompted if the document contains unsaved changes; that is, the file is closed and the changes are discarded. If bPromptToSaveChanges is true, and if the document contains unsaved changes, the user is prompted with the standard yes-or-no dialog box. The default value is true. This parameter is optional.
	 */
	static function closeDocument(documentObject:Document, ?bPromptToSaveChanges:Bool) : Void;
	
	static function closeProject() : Bool;
	
	/**
	 * Flash CS3 Professional.
	 * Read-only property; a compilerErrors object, which represents the Errors panel. For information on using this property, see compilerErrors object.
	 */
	static var compilerErrors : CompilerErrors;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; a componentsPanel object, which represents the Components panel.
	 */
	static var componentsPanel : ComponentsPanel;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; a string that specifies the full path for the local user’s Configuration directory in a platform-specific format. To specify this path as a file:/// URI, which is not platform-specific, use fl.configURI.
	 */
	static var configDirectory : String;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; a string that specifies the full path for the local user’s Configuration directory as a file:/// URI. See also fl.configDirectory.
	 */
	static var configURI : String;
	
	/**
	 * Flash 8.
	 * A Boolean value that specifies whether Contact Sensitive selection mode is enabled (true) or not (false).
	 */
	static var contactSensitiveSelection : Bool;
	
	/**
	 * Flash Professional CS5.
	 * Silently copies a library item from a document without exposing the item in the Flash Pro user interface. Call the document.clipPaste() method to paste the item into the new document.
	 * @param fileURI A string, expressed as a file:/// URI, that contains the path to the FLA or XFL file.
	 * @param libraryItemPath A string, that specifies the path to the library item to be copied.
	 * @return A Boolean value: true if the copy succeeds; false otherwise.
	 */
	static function copyLibraryItem(fileURI:String, libraryItemPath:String):Bool;
	
	/**
	 * Flash MX 2004.
	 * Opens a new document and selects it. Values for size, resolution, and color are the same as the current defaults.
	 * @param docType A string that specifies the type of document to create. The only acceptable value is "timeline". The default value is "timeline", which has the same effect as choosing File > New > Flash File (ActionScript 3.0). This parameter is optional.
	 * @return The Document object for the newly created document, if the method is successful. If an error occurs, the value is undefined.
	 */
	static function createDocument(?docType:String) : Document;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; an array of strings that represent the various types of documents that can be created.
	 */
	static var createNewDocList : Array<String>;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; an array of strings that represent the file extensions of the types of documents that can be created. The entries in the array correspond directly (by index) to the entries in the fl.createNewDocList array.
	 */
	static var createNewDocListType : Array<String>;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; an array of strings that represent the various types of templates that can be created.
	 */
	static var createNewTemplateList : Array<String>;
	
	static function createProject(fileURI:String, ?name:String) : Project;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; an array of Document objects (see Document object) that represent the documents (FLA files) that are currently open for editing.
	 */
	static var documents : Array<Document>;
	
	static function downloadLatestVersion(fileURI:String) : Bool;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; the drawingLayer object that an extensible tool should use when the user wants to temporarily draw while dragging (for example, when creating a selection marquee).
	 */
	static var drawingLayer : DrawingLayer;
	
	/**
	 * Flash Professional CS5.
	 * Returns a specific document’s publishing profile without having to open the file. The publish profile can also be specified, but this is optional.
	 * @param ucfURI A string that specifies the file Uniform Resource Identifier (URI) from which to export the publish settings.
	 * @param profileName A string that specifies the profile name to export. This parameter is optional.
	 * @return String
	 */
	static function exportPublishProfileString(ucfURI:String, ?profileName:String) : String;
	
	/**
	 * Flash CS4 Professional.
	 * Property; a string that contains a list of items in the global ActionScript 3.0 External library path, which specifies the location of SWC files used as runtime shared libraries. Items in the string are delimited by semi-colons. In the authoring tool, the items are specified by choosing Edit > Preferences > ActionScript > ActionScript 3.0 Settings.
	 */
	static var externalLibraryPath : String;
	
	static var effects : Array<Effect>;
	static function enableImmediateUpdates(bEnableUpdates:Bool) : Void;
	
	/**
	 * Flash MX 2004.
	 * Checks whether a file already exists on disk.
	 * @param fileURI A string, expressed as a file:/// URI, that contains the path to the file.
	 * @return A Boolean value: true if the file exists on disk; false otherwise.
	 */
	static function fileExists(fileURI:String) : Bool;
	
	/**
	 * Flash CS3 Professional.
	 * Lets you target a specific file by using its unique identifier (instead of its index value, for example). Use this method in conjunction with document.id.
	 * @param id An integer that represents a unique identifier for a document.
	 * @return A Document object, or null if no document exists with the specified id.
	 */
	static function findDocumentDOM(id:Int) : Document;
	
	/**
	 * Flash MX 2004.
	 * Returns an array of integers that represent the position of the document name in the fl.documents array. More than one document with the same name can be open (if the documents are located in different folders).
	 * @param name The document name for which you want to find the index. The document must be open.
	 * @return An array of integers that represent the position of the document name in the fl.documents array.
	 */
	static function findDocumentIndex(name:String) : Array<Int>;
	
	/**
	 * Flash CS3 Professional.
	 * Exposes elements in a document with instance names that match the specified text.
     *
     * Note: In some cases, this method works only when run as a command from within a FLA file, not when you are currently viewing or editing the JSFL file.
	 * @param instanceName A string that specifies the instance name of an item in the specified document.
	 * @param document The Document object in which to search for the specified item.
	 * @return An array of generic objects. Use the .obj property of each item in the array to get the object. The object has the following properties: keyframe, layer, timeline, and parent. You can use these properties to access the hierarchy of the object. For more information on these properties and how to access them, see fl.findObjectInDocByType().
	 * 
     * You can also access methods and properties for the layer and timeline values; they are equivalent to the Layer object and the Timeline object, respectively.
	 */
	static function findObjectInDocByName(instanceName:String, document:Document) : Array<{ keyframe:Dynamic, layer:Layer, timeline:Timeline, parent:Dynamic, obj:Dynamic }>;
	
	/**
	 * Flash CS3 Professional.
	 * Exposes elements of a specified element type in a document.
     * 
     * Note: In some cases, this method works only when run as a command from within a FLA file, not when you are currently viewing or editing the JSFL file.
	 * @param elementType A string that represents the type of element to search for. For acceptable values, see element.elementType.
	 * @param document The Document object in which to search for the specified item.
	 * @return An array of generic objects. Use the .obj property of each item in the array to get the element object. Each object has the following properties: keyframe, layer, timeline, and parent. You can use these properties to access the hierarchy of the object.
	 *
     * You can also access methods and properties for the layer and timeline values; they are equivalent to the Layer object and the Timeline object, respectively.
     * 
     * The second and third examples in the Examples section show how to access these properties.
	 */
	static function findObjectInDocByType(elementType:String, document:Document) : Array<{ keyframe:Dynamic, layer:Layer, timeline:Timeline, parent:Dynamic, obj:Dynamic }>;
	
	/**
	 * Flash CS4 Professional.
	 * Property; a string that specifies the path to the Flex SDK folder, which contains bin, frameworks, lib, and other folders. In the authoring tool, the items are specified by choosing Edit > Preferences > ActionScript > ActionScript 3.0 Settings.
	 */
	static var flexSDKPath : String;
	
	/**
	 * Flash 8(Windows only);
	 * Returns an integer that represents the number of bytes being used in a specified area of Flash.exe memory. Use the following table to determine which value you want to pass as memType:
	 * memType: Resource data:
	 * 0        PAGEFAULTCOUNT
	 * 1        PEAKWORKINGSETSIZE
	 * 2        WORKINGSETSIZE
	 * 3        QUOTAPEAKPAGEDPOOLUSAGE
	 * 4        QUOTAPAGEDPOOLUSAGE
	 * 5        QUOTAPEAKNONPAGEDPOOLUSAGE
	 * 6        QUOTANONPAGEDPOOLUSAGE
	 * 7        PAGEFILEUSAGE
	 * 8        PEAKPAGEFILEUSAGE
	 * @param memType An integer that specifies the memory utilization area to be queried. For a list of acceptable values, see the following description.
	 * @return An integer that represents the number of bytes being used in a specified area of Flash.exe memory.
	 */
	static function getAppMemoryInfo(memType:Int) : Int;
	
	/**
	 * Flash MX 2004.
	 * Retrieves the DOM (Document object) of the currently active document (FLA file). If one or more documents are open but a document does not currently have focus (for example, if a JSFL file has focus), retrieves the DOM of the most recently active document.
	 * @return A Document object, or null if no documents are open.
	 */
	static function getDocumentDOM() : Document;
	
	static function getProject() : Project;
	
	/**
	 * Flash Professional CC.
	 * Returns the theme color that matches the passed theme parameter. Flash Professional CC introduced 2 UI themes: Dark and Light UI, and this method retrieves the current theme color to help you render your custom content.
	 * @param themeParamName A string that contains a theme parameter from the list returned by the fl.getThemeColorParameters() method. If the theme parameter is themeUseGradients, this method returns either "true" or "false".
	 * @return A String containing a theme color (in #rrggbb or #rrggbbaa format) that matches the passed parameter. If the theme parameter is themeUseGradients, this method returns either "true" or "false".
	 */
	static function getThemeColor(themeParamName:String) : String;
	
	/**
	 * Flash Professional CC.
	 * Returns an Array of strings that contain the theme color parameters. The available theme color parameters are as follows:
     * - themeAppBackgroundColor
     * - themeItemSelectedColor
     * - themeItemHighlightedColor
     * - themeHotTextNormalColor
     * - themeHotTextRolloverColor
     * - themeHotTextDisableColor
     * - themeStaticTextNormalColor
     * - themeStaticTextDisableColor
     * - themeTextEditNormalBackgroundColor
     * - themeTextEditDisableBackgroundColor
     * - themeUseGradients
     * - themeEnableShading
     * - themeDividerLine
     * - themeDividerLineBevel
     * - themeControlFocus
     * - themeControlBorderNormal
     * - themeControlBorderDisabled
     * - themeControlFillNormal
     * - themeControlFillTopNormal
     * - themeControlFillBottomNormal
     * - themeControlFillOver
     * - themeControlFillTopOver
     * - themeControlFillBottomOver
     * - themeControlFillDown
     * - themeControlFillTopDown
     * - themeControlFillBottomDown
     * - themeControlFillDisabled
     * - themeControlFillTopDisabled
     * - themeControlFillBottomDisabled
     * - themeControlFillSelectedOver
     * - themeControlFillTopSelectedOver
     * - themeControlFillBottomSelectedOver
     * - themeGenericIconNormal
     * - themeGenericIconShadowNormal
     * - themeGenericIconDisabled
     * - themeGenericIconShadowDisabled
     * Flash Professional CC introduced 2 UI themes: Dark and Light UI, and this method retrieves the current theme color parameters to help you render your custom content.
     * Note: The "top" and "bottom" colors are for drawing controls when shading is enabled. When shading is disabled, use themeControlFillNormal, themeControlFillOver without the "top" and "bottom" in the names
	 * @return An Array of strings that contain the theme color parameters.
	 */
	static function getThemeColorParameters() : Array<String>;
	
	/**
	 * Flash CS5.5 Professional.
	 * Returns the SWFPanel object based on the panel's localized name or its SWF filename (without the filename extension).
	 * @param panelName The localized panel name or the root filename of the panel's SWF file. Pass in false as the second parameter if using the latter.
	 * @param useLocalizedPanelName Optional. Defaults to true. If false, the panelName parameter is assumed to be the English (unlocalized) name of the panel, which corresponds to the SWF filename without the file extension.
	 * @return SWFPanel object.
	 */
	static function getSwfPanel(panelName:String, ?useLocalizedPanelName:Bool) : SwfPanel;
	
	/**
	 * Flash Professional CC.
	 * Returns either the font Style or the font Size that is used to draw the UI of the specified size.
	 * @param infoType A string that contains one of the following:
     * - fontStyle - Return the font style for the size specified by the size parameter.
     * - fontSize - Return the font size for the size specified by the size parameter.
	 * @param size A string that specifies either "large" or "small".
	 * @return A String containing either the font style or the font size for the specifie size.
	 */
	static function getThemeFontInfo(infoType:String, size:String) : String;
	
	/**
	 * Flash CS5.5 Professional.
	 * Read-only property; The array of generic objects corresponding to the list of installed Flash Players in the document PI.
	 * 
	 * Each object in the array contains the following properties:
	 * name The string name of the document.
     * version Can be used to set the current player for a document, using the Document.setPlayerVersion() function.
     * minASVersion The minimum ActionScript version required by the document. An integer between the minASVersion and the maxASVersion (inclusive) can be used to set the ActionScript version of the document, using the Document.asVersion property.
     * maxASVersion The maximum ActionScript version supported by the document.
     * stageWidth The default Stage width in pixels for the given target. For example, for iPhone the default size is 320 x 480 pixels. For Android, the default size is 480 x 800.
     * stageHeight The default Stage height in pixels for the given target. For example, for iPhone the default size is 320 x 480 pixels. For Android, the default size is 480 x 800.
	 * @return An array of generic objects corresponding to the list of installed Flash Players in the document PI.
	 */
	static var installedPlayers : Array<{name:String, version:String, minASVersion:Int, maxASVersion:Int, stageWidth:Int, stageHeight:Int}>;
	
	/**
	 * Flash CS4 Professional.
	 * Determines whether a specified font is installed.
	 * @param fontName A string that specifies the name of a device font.
	 * @return A Boolean value of true if the specified font is installed; false otherwise.
	 */
	static function isFontInstalled(fontName:String) : Bool;
	
	/**
	 * Flash CS5 Professional.
	 * Property; a string that returns the five character code identifying the locale of the application’s user interface.
	 */
	static var languageCode : String;
	
	/**
	 * Flash CS4 Professional.
	 * Property; a string that contains a list of items in the global ActionScript 3.0 Library path, which specifies the location of SWC files or folders containing SWC files. Items in the string are delimited by semi-colons. In the authoring tool, the items are specified by choosing Edit > Preferences > ActionScript > ActionScript 3.0 Settings.
	 */
	static var libraryPath : String;
	
	/**
	 * Flash MX 2004.
	 * Maps an escaped Unicode URL to a UTF-8 or MBCS URL. Use this method when the string will be used in ActionScript to access an external resource. You must use this method if you need to handle multibyte characters.
	 * @param URI A string that contains the escaped Unicode URL to map.
	 * @param returnMBCS A Boolean value that you must set to true if you want an escaped MBCS path returned. Otherwise, the method returns UTF-8. The default value is false. This parameter is optional.
	 * @return A string that is the converted URL.
	 */
	static function mapPlayerURL(URI:String, ?returnMBCS:Bool) : String;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; the Math object provides methods for matrix and point operations.
	 */
	static var Math : Math;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; an array of the complete filenames in the Most Recently Used (MRU) list that the Flash authoring tool manages.
	 */
	static var mruRecentFileList : Array<String>;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; an array of the file types in the MRU list that the Flash authoring tool manages. This array corresponds to the array in the fl.mruRecentFileList property.
	 */
	static var mruRecentFileListType : Array<String>;
	
	/**
	 * Flash 8.
	 * Property; a Boolean value that specifies whether the object drawing mode is enabled (true) or the merge drawing mode is enabled (false).
	 */
	static var objectDrawingMode : Bool;
	
	/**
	 * Flash MX 2004.
	 * Opens a Flash document (FLA file) for editing in a new Flash Document window and gives it focus. For a user, the effect is the same as selecting File > Open and then selecting a file. If the specified file is already open, the window that contains the document comes to the front. The window that contains the specified file becomes the currently selected document.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the name of the file to be opened.
	 * @return The Document object for the newly opened document, if the method is successful. If the file is not found or is not a valid FLA file, an error is reported and the script is cancelled.
	 */
	static function openDocument(fileURI:String) : Document;
	
	static function openProject(fileURI:String) : Project; //returns Void in MX 2004
	
	/**
	 * Flash MX 2004.
	 * Opens an existing file or creates a new script (JSFL, AS, ASC) or other file (XML, TXT) in Flash.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the path of the JSFL, AS, ASC, XML, TXT, or other file that should be loaded into Flash.
	 */
	static function openScript(fileURI:String) : Void;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; reference to the outputPanel object.
	 */
	static var outputPanel : OutputPanel;
	
	/**
	 * Flash CS3 Professional. Dropped in Flash Professional CC.
     * Property; a string that corresponds to the global Classpath setting in the ActionScript 2.0 Settings dialog box. Class paths within the string are delimited with semi-colons (;). To view or change ActionScript 3.0 Classpath settings, use fl.as3PackagePaths.
	 */
	static var packagePaths : String;
	
	/**
	 * Flash CS4 Professional.
	 * Read-only property: a presetPanel object.
	 */
	static var presetPanel : PresetPanel;
	
	/**
	 * Flash CS5.5 Professional.
	 * Property: an integer that sets the maximum size, in megabytes, of the publish cache on disk.
	 */
	static var publishCacheDiskSizeMax : Int;
	
	/**
	 * Flash CS5.5 Professional.
	 * Property: a boolean value that sets whether the publish cache is enabled.
	 */
	static var publishCacheEnabled : Bool;
	
	/**
	 * Flash CS5.5 Professional.
	 * Property: an integer that sets the maximum size, in kilobytes, of entries that can be added to the publish cache in memory. Anything at or below this size will be kept in memory; anything larger will be written to disk.
	 * 
	 * Users with a lot of memory might want to raise this value to increase performance, while a user with very little memory might want to make it lower to keep the publish cache from consuming too much memory.
	 */
	static var publishCacheMemoryEntrySizeLimit : Int;
	
	/**
	 * Flash CS5.5 Professional.
	 * Property: an integer that sets the maximum size, in megabytes, of the publish cache in memory.
	 */
	static var publishCacheMemorySizeMax : Int;
	
	/**
	 * Flash CS5 Professional.
	 * Publishes a FLA file without opening it. This API opens the FLA in a headless mode and publishes the SWF (or whatever the profile is set to). The second parameter (publishProfile) is optional. The return value is a boolean indicating if the profile was found or not. In the case where the second parameter is not supplied, the return value is always true.
	 * @param flaURI A string, expressed as a file:/// URI, that specifies the path of the FLA file that should be silently published.
	 * @param publishProfile A string that specifies the publish profile to use when publishing. If this parameter is omitted, the default publish profile is used.
	 * @return Boolean.
	 */
	static function publishDocument(flaURI:String, ?publishProfile:String) : Bool;
	
	/**
	 * Flash MX 2004.
	 * Quits Flash, prompting the user to save any changed documents.
	 * @param bPromptIfNeeded A Boolean value that is true (default) if you want the user to be prompted to save any modified documents. Set this parameter to false if you do not want the user to be prompted to save modified documents. In the latter case, any modifications in open documents will be discarded and the application will exit immediately. Although it is useful for batch processing, use this method with caution. This parameter is optional.
	 */
	static function quit(?bPromptIfNeeded:Bool) : Void;
	
	/**
	 * Flash MX 2004. Dropped in Flash Professional CC.
	 * Reloads all effects descriptors defined in the user’s Configuration Effects folder. This permits you to rapidly change the scripts during development, and it provides a mechanism to improve the effects without relaunching the application. This method works best if used in a command placed in the Commands folder.
	 */
	static function reloadEffects() : Void;
	
	/**
	 * Flash MX 2004.
	 * Rebuilds the Tools panel from the toolconfig.xml file. This method is used only when creating extensible tools. Use this method when you need to reload the Tools panel, for example, after modifying the JSFL file that defines a tool that is already present in the panel.
	 */
	static function reloadTools() : Void;
	
	/**
	 * Flash CS3 Professional. The id parameter is new in CS4.
	 * Unregisters a function that was registered using fl.addEventListener().
	 * @param eventType A string that specifies the event type to remove from this callback function. Acceptable values are "documentNew", "documentOpened", "documentClosed", "mouseMove", "documentChanged", "layerChanged", "timelineChanged", and "frameChanged".
	 * @param id An integer that specifies the listener ID returned from the corresponding fl.addEventListener() call.
	 * @return A Boolean value of true if the event listener was successfully removed; false if the function was never added to the list with the fl.addEventListener() method.
	 */
	static function removeEventListener(eventType:String, ?id:Int) : Bool;
	
	/**
	 * Flash CS3 Professional.
	 * Resets the global Classpath setting in the ActionScript 3.0 Settings dialog box to the default value. To reset the ActionScript 2.0 global Classpath, use fl.resetPackagePaths() - dropped.
	 */
	static function resetAS3PackagePaths() : Void;
	
	/**
	 * Flash CS3 Professional. Dropped in Flash Professional CC.
     * Resets the global Classpath setting in the ActionScript 2.0 Settings dialog box to the default value. To reset the ActionScript 3.0 global Classpath, use fl.resetAS3PackagePaths().
	 */
	static function resetPackagePaths() : Void;
	
	/**
	 * Flash MX 2004.
	 * Reverts the specified FLA document to its last saved version. Unlike the File > Revert menu option, this method does not display a warning window that asks the user to confirm the operation. See also document.revert() and document.canRevert().
	 * @param documentObject A Document object. If documentObject refers to the active document, the Document window might not revert until the script that calls this method finishes executing.
	 * @return A Boolean value: true if the Revert operation completes successfully; false otherwise.
	 */
	static function revertDocument(documentObject:Document) : Bool;
	
	static function revertDocumentToLastVersion(documentObject:Document) : Bool;
	
	/**
	 * Flash MX 2004.
	 * Executes a JavaScript file. If a function is specified as one of the arguments, it runs the function and also any code in the script that is not within the function. The rest of the code in the script runs before the function is run.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the name of the script file to execute.
	 * @param funcName A string that identifies a function to execute in the JSFL file that is specified in fileURI. This parameter is optional.
	 * @param arg1 An optional parameter that specifies one or more arguments to be passed to funcname.
	 * @param p1
	 * @param p2
	 * @param p3
	 * @param p4
	 * @param p5
	 * @param p6
	 * @param p7
	 * @param p8
	 * @param p9
	 * @return The function's result as a string, if funcName is specified; otherwise, nothing.
	 */
	static function runScript(fileURI:String, ?funcName:String, ?arg1:Dynamic, ?p1 : Dynamic,  ?p2 : Dynamic,  ?p3 : Dynamic,  ?p4 : Dynamic,  ?p5 : Dynamic,  ?p6 : Dynamic,  ?p7 : Dynamic,  ?p8 : Dynamic,  ?p9 : Dynamic) : Void;
	
	/**
	 * Flash MX 2004.
	 * Saves all open documents.
	 * 
     * If a file has never been saved, the Save As dialog box displays. If a file has not been modified since the last time it was saved, the file isn’t saved. To allow an unsaved or unmodified file to be saved, use fl.saveDocumentAs().
	 */
	static function saveAll() : Void;
	
	static function saveAVersionOfDocument(document:Document) : Bool;
	
	/**
	 * Flash MX 2004.
	 * Saves the specified document as a FLA document.
	 * @param document A Document object that specifies the document to be saved. If document is null, the active document is saved.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the name of the saved document. If the fileURI parameter is null or omitted, the document is saved with its current name. This parameter is optional.
	 * @return A Boolean value: true if the save operation completes successfully; false otherwise.
	 * 
     * This method save the file regardless of whether it is new, modified, or unmodified.
	 */
	static function saveDocument(document:Document, ?fileURI:String) : Bool;
	
	/**
	 * Flash MX 2004.
	 * Displays the Save As dialog box for the specified document.
	 * @param document A Document object that specifies the document to save. If document is null, the active document is saved.
	 * @return A Boolean value: true if the Save As operation completes successfully; false otherwise.
	 */
	static function saveDocumentAs(document:Document) : Bool;
	
	/**
	 * Flash CS3 Professional.
	 * Read-only property; a string that represents the path of the currently running JSFL script, expressed as a file:/// URI. If the script was called from fl.runScript(), this property represents the path of the immediate parent script. That is, it doesn’t traverse multiple calls to fl.runScript() to find the path of the original calling script.
	 */
	static var scriptURI : String;
	
	/**
	 * Flash CS3 Professional.
	 * Enables selection or editing of an element. Generally, you will use this method on objects returned by fl.findObjectInDocByName() or fl.findObjectInDocByType().
	 * @param elementObject The Element object you want to select.
	 * @param editMode A Boolean value that specifies whether you want to edit the element (true) or want only to select it (false).
	 * @return A Boolean value of true if the element was successfully selected; false otherwise.
	 */
	static function selectElement(elementObject:Element, editMode:Bool) : Bool;
	
	/**
	 * Flash CS3 Professional.
	 * Selects the specified tool in the Tools panel. The acceptable default values for toolName are "arrow", "bezierSelect", "freeXform", "fillXform", "lasso", "pen", "penplus", "penminus", "penmodify", "text", "line", "rect", "oval", "rectPrimitive", "ovalPrimitive", "polystar", "pencil", "brush", "inkBottle", "bucket", "eyeDropper", "eraser", "hand", and "magnifier".
	 * 
     * If you or a user creates custom tools, the names of those tools can also be passed as the toolName parameter. The list of tool names is located in the following file:
	 * 
     * Windows 7:
	 * boot drive\Users\username\AppData\Local\Adobe\Flash CC\language\Configuration\Tools\toolConfig.xml
	 * Mac OS X:
	 * Macintosh HD/Users/username/Library/Application Support/Adobe/Flash CS3/language/Configuration/Tools/toolConfig.xml
	 * @param toolName A string that specifies the name of the tool to select. See “Description” below for information on acceptable values for this parameter.
	 */
	static function selectTool(toolName:String) : Void;
	
	/**
	 * Flash MX 2004.
	 * Sets the active window to be the specified document. This method is also supported by Dreamweaver and Fireworks. If the document has multiple views (created by Window > Duplicate Window), the most recently active view is selected.
	 * @param document A Document object that specifies the document to select as the active window.
	 * @param bActivateFrame An optional parameter that is ignored by Flash and Fireworks and is present only for compatibility with Dreamweaver.
	 */
	static function setActiveWindow(document:Document, ?bActivateFrame:Bool) : Void;
	
	/**
	 * Flash 8.
	 * Lets you disable the warning about a script running too long (pass false for show). You might want to do this when processing batch operations that take a long time to complete. To re-enable the alert, issue the command again, this time passing true for show.
	 * @param show A Boolean value specifying whether to enable or disable the warning about a script running too long.
	 */
	static function showIdleMessage(show:Bool) : Void;
	
	/**
	 * Flash Professional CC.
	 * Sets a boolean preference value.
	 * @param keySection A string that contains the preferences section that contains keyName. (usually this is "Settings").
	 * @param keyName A string that contains the name of the boolean preference setting to be set.
	 * @param keyValue A string that contains the value to be set (true ohr false).
	 */
	static function setPrefBoolean(keySection:String, keyName:String, keyValue:String) : Void;
	
	/**
	 * Flash CS4 Professional.
	 * Property; a string that contains a list of items in the global ActionScript 3.0 Source path, which specifies the location of ActionScript class files. Items in the string are delimited by semi-colons. In the authoring tool, the items are specified by choosing Edit > Preferences > ActionScript > ActionScript 3.0 Settings.
	 */
	static var sourcePath : String;
	
	/**
	 * Flash Pro CS6.
	 * Property; returns an instance of the SpriteSheetExporter object.
	 */
	static var spriteSheetExporter : SpriteSheetExporter;
	
	/**
	 * Flash CS4 Professional.
	 * Read-only property; an array of registered swfPanel objects (see swfPanel object). A swfPanel object is registered if it has been opened at least once.
	 * 
	 * A panel’s position in the array represents the order in which it was opened. If the first panel opened is named TraceBitmap and the second panel opened is named AnotherFunction, then fl.swfPanels[0] is the TraceBitmap swfPanel object, fl.swfPanels[1] is the AnotherFunction swfPanel object, and so on.
	 * 
	 * This property is undefined if none of panels have been opened (this behavior is new in Flash Professional CC).
	 */
	static var swfPanels : Array<SwfPanel>;
	
	static function synchronizeDocumentWithHeadVersion(documentObject:Document) : Bool;
	
	/**
	 * Flash Professional CC.
	 * Toggles a breakpoint for the given .as file at the given line. If enable is false, the breakpoint currently stored at that line will be erased.
	 * @param fileURI A string; the URI of the the AS file in which to toggle the breakpoint.
	 * @param line An integer; the line number at which to toggle the breakpoint.
	 * @param enable Boolean; if set to true, the breakpoint is enabled. If set to false, the breakpoint is disabled.
	 */
	static function toggleBreakpoint(fileURI:String, line:Int, enable:Bool) : Void;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; an array of Tools objects (see Tools object). This property is used only when creating extensible tools.
	 */
	static var tools : Array<Tools>;
	
	/**
	 * Flash MX 2004.
	 * Sends a text string to the Output panel, terminated by a new line, and displays the Output panel if it is not already visible. This method is identical to outputPanel.trace() and works in the same way as the trace() statement in ActionScript.
	 * 
	 * To send a blank line, use fl.trace("") or fl.trace("\n"). You can use the latter command inline, making \n a part of the message string.
	 * @param message A string that appears in the Output panel.
	 */
	static function trace(message:Dynamic) : Void;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; the long string version of the Flash authoring tool, including platform.
	 */
	static var version : String;
	
	/**
	 * Flash Professional CC.
	 * Launches the XML To UI dialog from a URI that points to an XML-format file.
	 * @param xmlURI A URI specifying the XML file that defines the controls in the panel. You must specify the full path name.
	 * @return XMLUI. The object returned contains properties for all controls defined in the XML file. All properties are returned as strings. The returned object will have one predefined property named "dismiss," which will have a string value that is either "accept" or "cancel".
	 */
	static function xmlPanel(xmlURI:String) : XMLUI;
	
	/**
	 * Flash Professional CC.
	 * Launches the XML To UI dialog from an XML-format string.
	 * @param xmlString A string containing XML that defines a dialog.
	 * @return XMLUI
	 */
	static function xmlPanelFromString(xmlString:String) : XMLUI;
	
	/**
	 * Flash MX 2004.
	 * Read-only property; an XMLUI object. This property lets you get and set XMLUI properties in a XMLUI dialog box and lets you accept or cancel the dialog box programmatically.
	 */
	static var xmlui : XMLUI;
	
	static function __init__() : Void
	{
		haxe.Log.trace = function(v:Dynamic, ?infos:haxe.PosInfos) untyped fl.trace(v);
	}
}
