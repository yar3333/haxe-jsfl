package jsfl;
import jsfl.Filter.FilterName;
import jsfl.Item.ItemType;
import jsfl.SymbolInstance.BlendMode;

typedef Document =
{
	/**
	 * Flash MX 2004.
	 * A string that is equivalent to the Name field in the Accessibility panel. Screen readers identify objects byreading the name aloud.
	 */
	var accName : String;
	/**
	 * Flash MX 2004.
	 * Stores specified data with a document. Data is written to the FLA file and is available to JavaScript when thefile reopens.
	 * @param name A string that specifies the name of the data to add.
	 * @param type A string that defines the type of data to add. Acceptable values are "integer", "integerArray", "double",
	 * @param data The value to add. Valid types depend on the type parameter.
	 */
	function addDataToDocument(name:String, type:DocumentDataType, data:Dynamic) : Void;
	/**
	 * Flash MX 2004.
	 * Stores specified data with the selected object(s). Data is written to the FLA file and is available to JavaScriptwhen the file reopens. Only symbols and bitmaps support persistent data.
	 * @param name A string that specifies the name of the persistent data.
	 * @param type Defines the type of data. Acceptable values are "integer", "integerArray", "double", "doubleArray",
	 * @param data The value to add. Valid types depend on the type parameter.
	 */
	function addDataToSelection(name:String, type:DocumentDataType, data:Dynamic) : Void;
	/**
	 * Flash 8.
	 * Applies a filter to the selected objects and places the filter at the end of the Filters list.
	 * @param filterName A string specifying the filter to be added to the Filters list and enabled for the selected object(s).
	 */
	function addFilter(filterName:FilterName) : Void;
	/**
	 * Flash MX 2004.
	 * Adds an item from any open document or library to the specified Document object.
	 * @param position A point that specifies the x and y coordinates of the location at which to add the item. It uses the center of
	 * @param item An Item object that specifies the item to add and the library from which to add it (see Item object).
	 */
	function addItem(position:JSFLPoint, item:Item) : Bool;
	/**
	 * Flash MX 2004.
	 * Adds a new path between two points. The method uses the documentтАЩs current stroke attributes and adds thepath on the current frame and current layer. This method works in the same way as clicking on the line tool anddrawing a line.
	 * @param startPoint A pair of floating-point numbers that specify the x and y coordinates where the line starts.
	 * @param endPoint A pair of floating-point numbers that specify the x and y coordinates where the line ends.
	 */
	function addNewLine(startPoint:JSFLPoint, endPoint:JSFLPoint) : Void;
	/**
	 * Flash MX 2004.
	 * Adds a new Oval object in the specified bounding rectangle. This method performs the same operation as theOval tool. The method uses the documentтАЩs current default stroke and fill attributes and adds the oval on the currentframe and layer. If both bSuppressFill and bSuppressStroke are set to true, the method has no effect.
	 * @param boundingRectangle A rectangle that specifies the bounds of the oval to be added. For information on the format of
	 * @param bSuppressFill A Boolean value that, if set to true, causes the method to create the shape without a fill. The default
	 * @param bSuppressStroke A Boolean value that, if set to true, causes the method to create the shape without a stroke. The
	 */
	function addNewOval(boundingRectangle:JSFLRect, ?bSuppressFill:Bool, ?bSuppressStroke:Bool) : Void;
	/**
	 * Flash CS4 Professional.
	 * Adds a new oval primitive fitting into the specified bounds. This method performs the same operation as theOval Primitive tool. The oval primitive uses the document's current default stroke and fill attributes and is added onthe current frame and layer. If both bSuppressFill and bSuppressStroke are set to true, the method has no effect.
	 * @param boundingRectangle A rectangle that specifies the bounds within which the new oval primitive is added. For
	 * @param bSuppressFill A Boolean value that, if set to true, causes the method to create the oval without a fill. The default
	 * @param bSuppressStroke A Boolean value that, if set to true, causes the method to create the oval without a stroke. The
	 */
	function addNewPrimitiveOval(boundingRectangle:JSFLRect, ?bSuppressFill:Bool, ?bSuppressStroke:Bool) : Void;
	/**
	 * Flash CS4 Professional.
	 * Adds a new rectangle primitive fitting into the specified bounds. This method performs the same operationas the Rectangle Primitive tool. The rectangle primitive uses the document's current default stroke and fill attributesand is added on the current frame and layer. If both bSuppressFill and bSuppressStroke are set to true, the method hasno effect.
	 * @param rect A rectangle that specifies the bounds within which the new rectangle primitive is added. For information on the
	 * @param roundness An integer between 0 and 999 that represents the number of points used to specify how much the corners
	 * @param bSuppressFill A Boolean value that, if set to true, causes the method to create the rectangle without a fill. The
	 * @param bSuppressStroke A Boolean value that, if set to true, causes the method to create the rectangle without a stroke.
	 */
	function addNewPrimitiveRectangle(rect:JSFLRect, roundness:Int, ?bSuppressFill:Bool, ?bSuppressStroke:Bool) : Void;
	/**
	 * Flash MX 2004.
	 * Adds a new publish profile and makes it the current one.
	 * @param profileName The unique name of the new profile. If you do not specify a name, a default name is provided. This
	 */
	function addNewPublishProfile(?profileName:String) : Int;
	/**
	 * Flash MX 2004.
	 * Adds a new rectangle or rounded rectangle, fitting it into the specified bounds. This method performs thesame operation as the Rectangle tool. The method uses the documentтАЩs current default stroke and fill attributes andadds the rectangle on the current frame and layer. If both bSuppressFill and bSuppressStroke are set to true, the methodhas no effect.
	 * @param boundingRectangle A rectangle that specifies the bounds within which the new rectangle is added, in the format
	 * @param roundness An integer value from 0 to 999 that specifies the roundness to use for the corners. The value is specified
	 * @param bSuppressFill A Boolean value that, if set to true, causes the method to create the shape without a fill. The default
	 * @param bSuppressStroke A Boolean value that, if set to true, causes the method to create the rectangle without a stroke.
	 */
	function addNewRectangle(boundingRectangle:JSFLRect, roundness:Int, ?bSuppressFill:Bool, ?bSuppressStroke:Bool) : Void;
	/**
	 * Flash MX 2004.
	 * Adds a new scene (Timeline object) as the next scene after the currently selected scene and makes the newscene the currently selected scene. If the specified scene name already exists, the scene is not added and the methodreturns an error.
	 * @param name Specifies the name of the scene. If you do not specify a name, a new scene name is generated.
	 */
	function addNewScene(?name:String) : Bool;
	/**
	 * Flash MX 2004; optional text parameter added in Flash CS3 Professional.
	 * Inserts a new text field and optionally places text into the field. If you omit the text parameter, you can calldocument.setTextString() to populate the text field.
	 * @param boundingRectangle Specifies the size and location of the text field. For information on the format of
	 * @param text An optional string that specifies the text to place in the field. If you omit this parameter, the selection in the Tools
	 */
	function addNewText(boundingRectangle:JSFLRect, ?text:String) : Void;
	/**
	 * Flash MX 2004.
	 * Aligns the selection.
	 * @param alignMode A string that specifies how to align the selection. Acceptable values are "left", "right", "top",
	 * @param bUseDocumentBounds A Boolean value that, if set to true, causes the method to align to the bounds of the document.
	 */
	function align(alignMode:AlignMode, ?bUseDocumentBounds:Bool) : Void;
	/**
	 * Flash MX 2004. Dropped in Flash Professional CC.
	 * Use before using the document.screenOutline property. If this method returns the value true, you cansafely access document.screenOutline; Flash displays an error if you access document.screenOutline in adocument without screens.
	 */
	function allowScreens() : Bool;
	/**
	 * Flash MX 2004.
	 * Arranges the selection on the Stage. This method applies only to non-shape objects.
	 * @param arrangeMode Specifies the direction in which to move the selection. Acceptable values are "back", "backward",
	 */
	function arrange(arrangeMode:ArrangeMode) : Void;
	/**
	 * Flash CS3 Professional.
	 * A Boolean value that describes whether the instances placed on the Stage are automatically added to user-defined timeline classes. The default value is true.
	 */
	var as3AutoDeclare : Bool;
	/**
	 * Flash CS3 Professional.
	 * A string that describes the ActionScript 3.0 тАЬdialectтАЭ being used in the specified document. The default valueis "AS3". If you wish to allow prototype classes, as permitted in earlier ECMAScript specifications, set this value to "ES".
	 */
	var as3Dialect : String;
	/**
	 * Flash CS3 Professional.
	 * An integer that specifies in which frame to export ActionScript 3.0 classes. By default, classes are exported inFrame 1.
	 */
	var as3ExportFrame : Int;
	/**
	 * Flash CS3 Professional.
	 * A Boolean value that specifies whether the ActionScript 3.0 compiler should compile with the Strict Modeoption turned on (true) or off (false). Strict Mode causes warnings to be reported as errors, which means thatcompilation will not succeed if those errors exist. The default value is true.
	 */
	var as3StrictMode : Bool;
	/**
	 * Flash CS3 Professional.
	 * A Boolean value that specifies whether the ActionScript 3.0 compiler should compile with the WarningsMode option turned on (true) or off (false). Warnings Mode causes extra warnings to be reported that are useful fordiscovering incompatibilities when updating ActionScript 2.0 code to ActionScript 3.0. The default value is true.
	 */
	var as3WarningsMode : Bool;
	/**
	 * Flash CS3 Professional.
	 * An integer that specifies which version of ActionScript is being used in the specified document. Acceptablevalues are 1, 2, and 3.To determine the targeted player version for the specified document, use document.getPlayerVersion(); thismethod returns a string, so it can be used by Flash┬о  LiteтДв players.
	 */
	var asVersion : Int;
	/**
	 * Flash MX 2004.
	 * A Boolean value that is equivalent to the Auto Label check box in the Accessibility panel. You can use thisproperty to tell Flash to automatically label objects on the Stage with the text associated with them.
	 */
	var autoLabel : Bool;
	/**
	 * Flash MX 2004.
	 * The color of the background, in one of the following formats:тАв  A string in the format "#RRGGBB" or "#RRGGBBAA"тАв  A hexadecimal number in the format 0xRRGGBBтАв  An integer that represents the decimal equivalent of a hexadecimal number
	 */
	var backgroundColor : Dynamic;
	/**
	 * Flash MX 2004.
	 * Performs a break-apart operation on the current selection.
	 */
	function breakApart() : Void;
	/**
	 * Flash MX 2004.
	 * Indicates whether the Edit Symbols menu and functionality are enabled. This is not related to whether theselection can be edited. This method should not be used to test whether fl.getDocumentDOM().enterEditMode()is allowed.
	 */
	function canEditSymbol() : Bool;
	/**
	 * Flash MX 2004.
	 * Determines whether you can use the document.revert() or fl.revertDocument() method successfully.
	 */
	function canRevert() : Bool;
	/**
	 * Flash MX 2004.
	 * Determines whether you can use the document.testMovie() method successfully.
	 */
	function canTestMovie() : Bool;
	/**
	 * Flash MX 2004.
	 * Determines whether you can use the document.testScene() method successfully.
	 */
	function canTestScene() : Bool;
	/**
	 * Flash 8.
	 * Changes the index of the filter in the Filters list. Any filters above or below newIndex are shifted up or downaccordingly. For example, using the filters shown below, if you issue the commandfl.getDocumentDOM().changeFilterOrder(3, 0), the filters are rearranged as follows:BeforeAfterblurFilterdropShadowFilterglowFiltergradiengradientBevelFilterblurFilterdropShadowFilterglotBevelFilterwFilterIf you then issue the command fl.getDocumentDOM().changeFilterOrder(0, 2), the filters are rearranged as follows:BeforeAftergradientBevelFilterblurFilterdropShadowFiltblurFilterdropShadowFiltergradientBevelFiltergloerglowFilterwFilter
	 * @param oldIndex An integer that represents the current zero-based index position of the filter you want to reposition in the
	 * @param newIndex An integer that represents the new index position of the filter in the list.
	 */
	function changeFilterOrder(oldIndex:Int, newIndex:Int) : Void;
	/**
	 * Flash MX 2004.
	 * Copies the current selection from the document to the Clipboard.To copy a string to the Clipboard, use fl.clipCopyString().
	 */
	function clipCopy() : Void;
	/**
	 * Flash MX 2004.
	 * Cuts the current selection from the document and writes it to the Clipboard.
	 */
	function clipCut() : Void;
	/**
	 * Flash MX 2004.
	 * Pastes the contents of the Clipboard into the document.
	 * @param bInPlace A Boolean value that, when set to true, causes the method to perform a paste-in-place operation. The
	 */
	function clipPaste(bInPlace:Bool) : Void;
	/**
	 * Flash MX 2004.
	 * Closes the specified document.
	 * @param bPromptToSaveChanges A Boolean value that, when set to true, causes the method to prompt the user with a dialog
	 */
	function close(?bPromptToSaveChanges:Bool) : Void;
	/**
	 * Flash MX 2004.
	 * Converts lines to fills on the selected objects.
	 */
	function convertLinesToFills() : Void;
	/**
	 * Flash Professional CC.
	 * Converts selected objects in the current frame to a bitmap and inserts the bitmap into the library.
	 */
	function convertSelectionToBitmap() : Bool;
	/**
	 * Flash MX 2004.
	 * Converts the selected Stage item(s) to a new symbol. For information on defining linkage and shared assetproperties for a symbol, see Item object.
	 * @param type A string that specifies the type of symbol to create. Acceptable values are "movie clip", "button", and "graphics".
	 * @param name A string that specifies the name for the new symbol, which must be unique. You can submit an empty string to
	 * @param registrationPoint Specifies the point that represents the 0,0 location for the symbol. Acceptable values are: "top
	 */
	function convertToSymbol(type:ItemType, name:String, registrationPoint:RegistrationPoint) : SymbolInstance;
	/**
	 * Flash 8.
	 * Uses the top selected drawing object to crop all selected drawing objects underneath it. This method returnsfalse if there are no drawing objects selected or if any of the selected items are not drawing objects.
	 */
	function crop() : Bool;
	/**
	 * Flash MX 2004.
	 * A string that specifies the name of the active publish profile for the specified document.
	 */
	var currentPublishProfile : String;
	/**
	 * Flash MX 2004.
	 * An integer that specifies the index of the active timeline. You can set the active timeline by changing the valueof this property; the effect is almost equivalent to calling document.editScene(). The only difference is that youdonтАЩt get an error message if the index of the timeline is not valid; the property is simply not set, which causes silentfailure.
	 */
	var currentTimeline : Int;
	/**
	 * Flash Professional CS5.
	 * Invokes the Debug Movie command on the document.
	 * @param abortIfErrorsExist Boolean; the default value is false. If set to true, the debug session will not start and the .swf
	 */
	function debugMovie(?abortIfErrorsExist:Bool) : Void;
	/**
	 * Flash 8.
	 * Deletes the envelope (bounding box that contains one or more objects) from the selected objects.
	 */
	function deleteEnvelope() : Bool;
	/**
	 * Flash MX 2004.
	 * Deletes the currently active profile, if there is more than one. There must be at least one profile left.
	 */
	function deletePublishProfile() : Int;
	/**
	 * Flash MX 2004.
	 * Deletes the current scene (Timeline object) and, if the deleted scene was not the last one, sets the next sceneas the current Timeline object. If the deleted scene was the last one, it sets the first object as the current Timeline object.If only one Timeline object (scene) exists, it returns the value false.
	 */
	function deleteScene() : Bool;
	/**
	 * Flash MX 2004.
	 * Deletes the current selection on the Stage. Displays an error message if there is no selection.
	 */
	function deleteSelection() : Void;
	/**
	 * Flash MX 2004.
	 * A string that is equivalent to the Description field in the Accessibility panel. The description is read by thescreen reader.
	 */
	var description : String;
	/**
	 * Flash 8.
	 * Disables all filters on the selected objects.
	 */
	function disableAllFilters() : Void;
	/**
	 * Flash 8.
	 * Disables the specified filter in the Filters list.
	 * @param filterIndex An integer representing the zero-based index of the filter in the Filters list.
	 */
	function disableFilter(filterIndex:Int) : Void;
	/**
	 * Flash 8.
	 * Disables all filters except the one at the specified position in the Filters list.
	 * @param enabledFilterIndex An integer representing the zero-based index of the filter that should remain enabled after
	 */
	function disableOtherFilters(enabledFilterIndex:Int) : Void;
	/**
	 * Flash MX 2004.
	 * Distributes the selection.
	 * @param distributemode A string that specifies where to distribute the selected objects. Acceptable values are "left edge",
	 * @param bUseDocumentBounds A Boolean value that, when set to true, distributes the selected objects using the bounds of the
	 */
	function distribute(distributemode:String, ?bUseDocumentBounds:Bool) : Void;
	/**
	 * Flash Professional CC.
	 * Performs a distribute-to-keyframes operation on the current selection—equivalent to selecting Distribute to KeyFrames. A new keyframe is created for every object. New keyframes are created on the active layer immediately after the active frame
	 */
	function distributeToKeyframes() : Void;
	/**
	 * Flash MX 2004.
	 * Performs a distribute-to-layers operation on the current selectionтАФequivalent to selecting Distribute toLayers. This method displays an error if there is no selection.
	 */
	function distributeToLayers() : Void;
	/**
	 * Flash CS3 Professional.
	 * A string that specifies the top-level ActionScript 3.0 class associated with the document. If the document isnтАЩtconfigured to use ActionScript 3.0, this property is ignored.
	 */
	var docClass : String;
	/**
	 * Flash MX 2004.
	 * Checks the document for persistent data with the specified name.
	 * @param name A string that specifies the name of the data to check.
	 */
	function documentHasData(name:String) : Bool;
	/**
	 * Flash MX 2004.
	 * Duplicates the currently active profile and gives the duplicate version focus.
	 * @param profileName A string that specifies the unique name of the duplicated profile. If you do not specify a name, the
	 */
	function duplicatePublishProfile(profileName:String) : Int;
	/**
	 * Flash MX 2004.
	 * Makes a copy of the currently selected scene, giving the new scene a unique name and making it the currentscene.
	 */
	function duplicateScene() : Bool;
	/**
	 * Flash MX 2004.
	 * Duplicates the selection on the Stage.
	 */
	function duplicateSelection() : Void;
	/**
	 * Flash MX 2004.
	 * Makes the specified scene the currently selected scene for editing.
	 * @param index A zero-based integer that specifies which scene to edit.
	 */
	function editScene(index:Int) : Void;
	/**
	 * Flash 8.
	 * Enables all the filters on the Filters list for the selected object(s).
	 */
	function enableAllFilters() : Void;
	/**
	 * Flash 8.
	 * Enables the specified filter for the selected object(s).
	 * @param filterIndex An integer specifying the zero-based index of the filter in the Filters list to enable.
	 */
	function enableFilter(filterIndex:Int) : Void;
	/**
	 * Flash MX 2004.
	 * Switches the authoring tool into the editing mode specified by the parameter. If no parameter is specified, themethod defaults to symbol-editing mode, which has the same result as right-clicking the symbol to invoke the contextmenu and selecting Edit.
	 * @param editMode A string that specifies the editing mode. Acceptable values are "inPlace" or "newWindow". If no
	 */
	function enterEditMode(?editMode:EditMode) : Void;
	/**
	 * Flash MX 2004.
	 * Exits from symbol-editing mode and returns focus to the next level up from the editing mode. For example,if you are editing a symbol inside another symbol, this method takes you up a level from the symbol you are editing,into the parent symbol.
	 */
	function exitEditMode() : Void;
	/**
	 * Flash CS6.
	 * Exports a selected instance of a movie clip, graphic, or button symbol on the Stage to a bitmap in Library.
	 * @param frameNumber Integer indicating the frame to be exported. 
	 * @param bitmapName A string representing the name of the bitmap to be added to the Library.
	 */
	function exportInstanceToLibrary(frameNumber:Int, bitmapName:String) : Void;
	/**
	 * Flash CS6.
	 * Exports a selected instance of a movie clip, graphic, or button symbol on the Stage to a series of PNG files on disk. If no startFrameNum or endFrameNum is given, the output includes all frames in the Timeline.
	 * @param outputURI String: The URI to export the PNG Sequence files to. This URI must reference a local file. Example: file:///c|/tests/mytest.png.
	 * @param startFrameNum Optional. An integer indicating the first frame to be exported. The default is 1.
	 * @param endFrameNum Optional. An Integer indicating the last frame to be exported. The default is 99999.
	 * @param matrix Optional. A matrix to be appended to the exported PNG sequence.
	 */
	function exportInstanceToPNGSequence(outputURI:String, ?startFrameNum:Int, ?endFrameNum:Int, ?matrix:Matrix) : Void;
	/**
	 * Flash 8.
	 * Exports the document as one or more PNG files. If fileURI is specified and the file already exists, it isoverwritten without warning.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the filename for the exported file. If fileURI is an empty
	 * @param bCurrentPNGSettings A Boolean value that specifies whether to use the current PNG publish settings (true) or to
	 * @param bCurrentFrame A Boolean value that specifies whether to export only the current frame (true) or to export all
	 */
	function exportPNG(?fileURI:String, ?bCurrentPNGSettings:Bool, ?bCurrentFrame:Bool) : Bool;
	/**
	 * Flash MX 2004.
	 * Exports the currently active profile to an XML file.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the path of the XML file to which the profile is exported.
	 */
	function exportPublishProfile(fileURI:String) : Void;
	/**
	 * Flash CS4 Professional.
	 * Returns a string that specifies, in XML format, the specified profile. If you donтАЩt pass a value for profileName,the current profile is exported.
	 * @param profileName A string that specifies the name of the profile to export to an XML string. This parameter is optional.
	 */
	function exportPublishProfileString(?profileName:String) : String;
	/**
	 * Flash MX 2004.
	 * Exports the document in the Flash SWF format.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the name of the exported file. If fileURI is empty or not
	 * @param bCurrentSettings A Boolean value that, when set to true, causes Flash to use current SWF publish settings.
	 */
	function exportSWF(?fileURI:String, ?bCurrentSettings:Bool) : Void;
	/**
	 * Flash Professional CC.
	 * Exports a video from the document and optionally sends it to Adobe Media Encoder to convert the video. 
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the fully qualified path to which the video is saved.
	 * @param convertInAdobeMediaEncoder A boolen value that specifies whether or not to send the recorded video to Adobe Media Encoder. The default value is true, which sends the video to Adobe Media Encoder. This parameter is optional.
	 * @param transparent A boolean value that specifies whether or not the background should be included in the video. The default value is false, which includes the movie background in the video. This parameter is optional.
	 * @param stopAtFrame A boolean value that specifies whether the video should be recorded until it reaches a certain frame or a specific time. The default value is true, stop when a certain frame is reached. This parameter is optional.
	 * @param stopAtFrameOrTime If stopAtFrame is true, this is an int specifying the number of frames to record. If stopAtFrame is false, this is the number of milliseconds to record. The default value is 0 which, if stopAtFrame is true, will record all the frames in the main timeline. This parameter is optional.
	 */
	function exportVideo(fileURI:String, ?convertInAdobeMediaEncoder:Bool, ?transparent:Bool, ?stopAtFrame:Bool, ?stopAtFrameOrTime:Int) : Void;
	/**
	 * Flash CS4 Professional.
	 * A string that contains a list of items in the documentтАЩs ActionScript 3.0 External library path, which specifiesthe location of SWC files used as runtime shared libraries. Items in the string are delimited by semi-colons. In theauthoring tool, the items are specified by choosing File &gt; Publish Settings and then choosing ActionScript 3.0 ScriptSettings on the Flash tab.
	 */
	var externalLibraryPath : String;
	/**
	 * Flash MX 2004.
	 * A Boolean value that specifies whether the children of the specified object are accessible. This is equivalentto the inverse logic of the Make Child Objects Accessible setting in the Accessibility panel. That is, if forceSimple istrue, it is the same as the Make Child Object Accessible option being unchecked. If forceSimple is false, it is thesame as the Make Child Object Accessible option being checked.
	 */
	var forceSimple : Bool;
	/**
	 * Flash MX 2004.
	 * A float value that specifies the number of frames displayed per second when the SWF file plays; the default is12. Setting this property is the same as setting the default frame rate in the Document Properties dialog box (Modify&gt; Document) in the FLA file.
	 */
	var frameRate : Float;
	/**
	 * Flash MX 2004.
	 * Identical to retrieving the value of the To Stage button in the Align panel. Gets the preference that can be usedfor document.align(), document.distribute(), document.match(), and document.space() methods on thedocument.
	 */
	function getAlignToDocument() : Bool;
	/**
	 * Flash 8.
	 * Returns a string that specifies the blending mode for the selected object(s).
	 */
	function getBlendMode() : BlendMode;
	/**
	 * Retrieves the fill object of the selected shape or, if specified, of the Tools panel and Property inspector.
	 * @objectToFill A string that specifies the location of the fill object. The following values are valid:
	 */
	function getCustomFill(?objectToFill:String) : Fill;
	/**
	 * Returns the stroke object of the selected shape or, if specified, of the Tools panel and Property inspector.
	 * @locationOfStroke A string that specifies the location of the stroke object. The following values are valid:
	 */
	function getCustomStroke(locationOfStroke:String) : Stroke;
	/**
	 * Retrieves the value of the specified data. The type returned depends on the type of data that was stored.
	 * @name A string that specifies the name of the data to return.
	 */
	function getDataFromDocument(name:String) : Dynamic;
	/**
	 * Gets the specified Element property for the current selection. For a list of acceptable values, see the Propertysummary table for the Element object.
	 * @propertyName A string that specifies the name of the Element property for which to retrieve the value.
	 */
	function getElementProperty(propertyName:String) : Dynamic;
	/**
	 * Gets a specific TextAttrs property of the selected Text objects. Selected objects that are not text fields areignored. For a list of property names and expected values, see the Property summary table for the TextAttrs object. Seealso document.setElementTextAttr().
	 * @attrName A string that specifies the name of the TextAttrs property to be returned. For a list of property names and
	 * @startIndex An integer that specifies the index of first character, with 0 (zero) specifying the first position. This
	 * @endIndex An integer that specifies the index of last character. This parameter is optional.
	 */
	function getElementTextAttr(attrName:String, ?startIndex:Int, ?endIndex:Int) : Dynamic;
	/**
	 * Returns an array that contains the list of filters applied to the currently selected object(s). If multiple objectsare
	 *  selected and they donтАЩt have identical filters, this method returns the
	 *  list of filters applied to the first selected object.
	 */
	function getFilters() : Array<Filter>;
	/**
	 * Returns a string containing the XML metadata associated with the document, or an empty string if there is nometadata.
	 */
	function getMetadata() : String;
	/**
	 * Returns the mobile XML settings for the document.
	 */
	function getMobileSettings() : String;
	/**
	 * Returns a string that represents the targeted player version for the specified document. For a list of values thatthis method can return, see document.setPlayerVersion().To determine which version of ActionScript is being targeted in the specified file, use document.asVersion.
	 */
	function getPlayerVersion() : String;
	/**
	 * Gets the bounding rectangle of the current selection. If a selection is non-rectangular, the smallest rectangleencompassing the entire selection is returned. The rectangle is based on the document space or, when in edit mode,the registration point (also origin point or zero point) of the symbol being edited.
	 */
	function getSelectionRect() : JSFLRect;
	/**
	 * Gets the currently selected text. If the optional parameters are not passed, the current text selection is used. Iftext is not currently opened for editing, the whole text string is returned. If only startIndex is passed, the string startingat that index and ending at the end of the field is returned. If startIndex and endIndex are passed, the string startingfrom startIndex up to, but not including, endIndex is returned.If there are several text fields selected, the concatenation of all the strings is returned.
	 * @startIndex An integer that is an index of first character to get. This parameter is optional.
	 * @endIndex An integer that is an index of last character to get. This parameter is optional.
	 */
	function getTextString(?startIndex:Int, ?endIndex:Int) : String;
	/**
	 * Retrieves the current Timeline object in the document. The current timeline can be the current scene, thecurrent symbol being edited, or the current screen.
	 */
	function getTimeline() : Timeline;
	/**
	 * Gets the location of the transformation point of the current selection. You can use the transformation pointfor commutations such as rotate and skew.Note: Transformation points are relative to different locations, depending on the type of item selected. For moreinformation, see document.setTransformationPoint().
	 */
	function getTransformationPoint() : JSFLPoint;
	/**
	 * An integer that specifies the height of the document (Stage) in pixels.
	 */
	var height : Int;
	/**
	 * Read-only. A unique integer (assigned automatically) that identifies a document during a Flash session. Usethis property in conjunction with fl.findDocumentDOM() to specify a particular document for an action.
	 */
	var id : Int;
	/**
	 * Read-only. The library object for a document.
	 */
	var library : Library;
	/**
	 * A string that contains a list of items in the documentтАЩs ActionScript 3.0 Library path, which specifies thelocation of SWC files or folders containing SWC files. Items in the string are delimited by semi-colons. In theauthoring tool, the items are specified by choosing File &gt; Publish Settings and then choosing ActionScript 3.0 ScriptSettings on the Flash tab.
	 */
	var libraryPath : String;
	/**
	 * A Boolean value that specifies whether Live Preview is enabled. If set to true, components appear on theStage as they will appear in the published Flash content, including their approximate size. If set to false, componentsappear only as outlines. The default value is true.
	 */
	var livePreview : Bool;
	/**
	 * Read-only. A string that represents the name of a document (FLA file).
	 */
	var name : String;
	/**
	 * Read-only. A string that represents the path of the document in a platform-specific format. If the documenthas never been saved, this property is undefined.
	 */
	var path : String;
	/**
	 * Read-only. A string that represents the path of the document, expressed as a file:/// URI. If the document hasnever been saved, this property is undefined.
	 */
	var pathURI : String;
	/**
	 * Read-only. An array of the publish profile names for the document.
	 */
	var publishProfiles : Array<String>;
	/**
	 * Read-only. The current ScreenOutline object for the document. Before accessing the object for the first time,make sure to use document.allowScreens() to determine whether the property exists.
	 */
	var screenOutline : ScreenOutline;
	/**
	 * An array of the selected objects in the document. If nothing is selected, returns an array of length zero. If nodocument is open, returns null.To add objects to the array, you must first select them in one of the following ways:тАв  Manually select object(s) on the Stage.тАв  Use one of the selection methods, such as document.setSelectionRect(), document.setSelectionBounds(),document.mouseClick(), document.mouseDblClk(), or document.selectAll().тАв  Manually select a frame or frames.тАв  Use one of the methods of the Timeline object to select a frame or frames, such astimeline.getSelectedFrames(), timeline.setSelectedFrames(), or timeline.selectAllFrames().тАв  Specify all the elements in a particular frame (see Element object). See the first example below.тАв  Create an array of one or more elements and then assign that array to the document.selection array. See the thirdexample below.
	 */
	var selection : Array<Dynamic>;
	/**
	 * A Boolean value that specifies whether the object is accessible. This is equivalent to the inverse logic of theMake Movie Accessible setting in the Accessibility panel. That is, if document.silent is true, it is the same as theMake Movie Accessible option being unchecked. If it is false, it is the same as the Make Movie Accessible optionbeing checked.
	 */
	var silent : Bool;
	/**
	 * A string that contains a list of items in the documentтАЩs ActionScript 3.0 Source path, which specifies thelocation of ActionScript class files. Items in the string are delimited by semi-colons. In the authoring tool, the itemsare specified by choosing File &gt; Publish Settings and then choosing ActionScript 3.0 Script Settings on the Flash tab.
	 */
	var sourcePath : String;
	/**
	 * Read-only. An array of Timeline objects (see Timeline object).
	 */
	var timelines : Array<Timeline>;
	/**
	 * Read-only. A Matrix object. The viewMatrix is used to transform from object space to document space whenthe document is in edit mode. The mouse location, as a tool receives it, is relative to the object that is currently beingedited. See Matrix object.For example, if you create a symbol, double-click to edit it, and draw with the PolyStar tool, the point (0,0) will be atthe registration point of the symbol. However, the drawingLayer object expects values in document space, so if youdraw a line from (0,0) using the drawingLayer, it will start at the upper left corner of the Stage. The viewMatrixproperty provides a way to transform from the space of the object being edited to document space.
	 */
	var viewMatrix : Matrix;
	/**
	 * An integer that specifies the width of the document (Stage) in pixels.
	 */
	var width : Int;
	/**
	 * Specifies the zoom percent of the Stage at authoring time. A value of 1 equals 100 percent zoom, 8 equals 800percent, .5 equals 50 percent, and so on.
	 */
	var zoomFactor : Float;
	function canSaveAVersion() : Bool;
	/**
	 * Converts the current selection to a group.
	 */
	function group() : Void;
	/**
	 * Imports a file into a document. This method performs the same operation as the Import To Library or ImportTo Stage menu command. To import a publish profile, use document.importPublishProfile().
	 * @fileURI A string, expressed as a file:/// URI, that specifies the path of the file to import.
	 * @importToLibrary A Boolean value that specifies whether to import the file only into the documentтАЩs library (true)
	 */
	function importFile(fileURI:String, ?importToLibrary:Bool) : Void;
	/**
	 * Imports a profile from a file.
	 * @fileURI A string, expressed as a file:/// URI, that specifies the path of the XML file defining the profile to import.
	 */
	function importPublishProfile(fileURI:String) : Int;
	/**
	 * Method: imports an XML string that represents a publish profile and sets it as the current profile. To generate an XMLstring to import, use document.exportPublishProfileString() before using this method.
	 * @xmlString A string that contains the XML data to be imported as the current profile.
	 */
	function importPublishProfileString(xmlString:String) : Bool;
	/**
	 * Imports a SWF file into the document. This method performs the same operation as using the Import menucommand to specify a SWF file. In Flash 8 and later, you can also use document.importFile() to import a SWF file(as well as other types of files).
	 * @fileURI A string, expressed as a file:/// URI, that specifies the file for the SWF file to import.
	 */
	function importSWF(fileURI:String) : Void;
	/**
	 * Creates an intersection drawing object from all selected drawing objects. This method returns false if thereare no drawing objects selected, or if any of the selected items are not drawing objects.
	 */
	function intersect() : Bool;
	/**
	 * Loads a cue point XML file. The format and DTD of the XML file is the same as the one imported and exportedby the Cue Points Property inspector. The return value is the same as the string serialized in the Cue Point property ofthe object containing the instance of an FLVPlayback Component.
	 * @URI String; the absolute path to the cue point XML file.
	 */
	function loadCuepointXML(URI:String) : Void;
	/**
	 * Makes the size of the selected objects the same.
	 * @bWidth A Boolean value that, when set to true, causes the method to make the widths of the selected items the same.
	 * @bHeight A Boolean value that, when set to true, causes the method to make the heights of the selected items the same.
	 * @bUseDocumentBounds A Boolean value that, when set to true, causes the method to match the size of the objects to
	 */
	function match(bWidth:Bool, bHeight:Bool, ?bUseDocumentBounds:Bool) : Void;
	/**
	 * Performs a mouse click from the Selection tool.
	 * @position A pair of floating-point values that specify the x and y coordinates of the click in pixels.
	 * @bToggleSel A Boolean value that specifies the state of the Shift key: true for pressed; false for not pressed.
	 * @bShiftSel A Boolean value that specifies the state of the application preference Shift select: true for on; false for off.
	 */
	function mouseClick(position:JSFLPoint, bToggleSel:Bool, bShiftSel:Bool) : Void;
	/**
	 * Performs a double mouse click from the Selection tool.
	 * @position A pair of floating-point values that specify the x and y coordinates of the click in pixels.
	 * @bAltDown A Boolean value that records whether the Alt key is down at the time of the event: true for pressed; false
	 * @bShiftDown A Boolean value that records whether the Shift key was down when the event occurred: true for pressed;
	 * @bShiftSelect A Boolean value that indicates the state of the application preference Shift select: true for on; false
	 */
	function mouseDblClk(position:JSFLPoint, bAltDown:Bool, bShiftDown:Bool, bShiftSelect:Bool) : Void;
	/**
	 * If the selection contains at least one path with at least one B├йzier point selected, moves all selected B├йzierpoints on all selected paths by the specified amount.
	 * @delta A pair of floating-point values that specify the x and y coordinates in pixels by which the selected B├йzier points
	 */
	function moveSelectedBezierPointsBy(delta:JSFLPoint) : Void;
	/**
	 * Moves selected objects by a specified distance.Note: When the user uses the arrow keys to move the item, the History panel combines all presses of the arrow key as onemove step. When the user presses the arrow keys repeatedly, rather than taking multiple steps in the History panel, themethod performs one step, and the arguments are updated to reflect the repeated arrow keys.For information on making a selection, see document.setSelectionRect(), document.mouseClick(),document.mouseDblClk(), and the Element object.
	 * @distanceToMove A pair of floating-point values that specify the x and y coordinate values by which the method
	 */
	function moveSelectionBy(distanceToMove:JSFLPoint) : Void;
	/**
	 * Optimizes smoothing for the current selection, allowing multiple passes, if specified, for optimal smoothing.This method is equivalent to selecting Modify &gt; Shape &gt; Optimize.
	 * @smoothing An integer in the range from 0 to 100, with 0 specifying no smoothing and 100 specifying maximum
	 * @bUseMultiplePasses A Boolean value that, when set to true, indicates that the method should use multiple passes,
	 */
	function optimizeCurves(smoothing:Int, bUseMultiplePasses:Bool) : Void;
	/**
	 * Publishes the document according to the active publish settings (File &gt; Publish Settings). This method isequivalent to selecting File &gt; Publish.
	 */
	function publish() : Void;
	/**
	 * Uses the top selected drawing object to punch through all selected drawing objects underneath it. This methodreturns false if there are no drawing objects selected or if any of the selected items are not drawing objects.
	 */
	function punch() : Bool;
	/**
	 * Removes all filters from the selected object(s).
	 */
	function removeAllFilters() : Void;
	/**
	 * Removes persistent data with the specified name that has been attached to the document.
	 * @name A string that specifies the name of the data to remove.
	 */
	function removeDataFromDocument(name:String) : Void;
	/**
	 * Removes persistent data with the specified name that has been attached to the selection.
	 * @name A string that specifies the name of the persistent data to remove.
	 */
	function removeDataFromSelection(name:String) : Void;
	/**
	 * Removes the specified filter from the Filters list of the selected object(s).
	 * @filterIndex An integer specifying the zero-based index of the filter to remove from the selected object(s).
	 */
	function removeFilter(filterIndex:Int) : Void;
	/**
	 * Renames the current profile.
	 * @profileNewName An optional parameter that specifies the new name for the profile. The new name must be unique.
	 */
	function renamePublishProfile(?profileNewName:String) : Bool;
	/**
	 * Renames the currently selected scene in the Scenes panel. The new name for the selected scene must be unique.
	 * @name A string that specifies the new name of the scene.
	 */
	function renameScene(name:String) : Bool;
	/**
	 * Moves the specified scene before another specified scene.
	 * @sceneToMove An integer that specifies which scene to move, with 0 (zero) being the first scene.
	 * @sceneToPutItBefore An integer that specifies the scene before which you want to move the scene specified by
	 */
	function reorderScene(sceneToMove:Int, sceneToPutItBefore:Int) : Void;
	/**
	 * Sets all values in the Property inspector to default Oval object settings. If any Oval objects are selected, theirproperties are reset to default values as well.
	 */
	function resetOvalObject() : Void;
	/**
	 * Sets all values in the Property inspector to default Rectangle object settings. If any Rectangle objects areselected, their properties are reset to default values as well.
	 */
	function resetRectangleObject() : Void;
	/**
	 * Resets the transformation matrix. This method is equivalent to selecting Modify &gt; Transform &gt; RemoveTransform.
	 */
	function resetTransformation() : Void;
	/**
	 * Reverts the specified document to its previously saved version. This method is equivalent to selecting File &gt;Revert.
	 */
	function revert() : Void;
	function revertToLastVersion() : Bool;
	/**
	 * Method: applies a 3D rotation to the selection. This method is available only for movie clips.
	 * @xyzCoordinate An XYZ coordinate point that specifies the axes for 3D rotation.
	 * @bGlobalTransform A Boolean value that specifies whether the transformation mode should be global (true) or local
	 */
	function rotate3DSelection(xyzCoordinate:{ x:Float, y:Float, z:Float }, bGlobalTransform:Bool) : Void;
	/**
	 * Rotates the selection by a specified number of degrees. The effect is the same as using the Free Transform toolto rotate the object.
	 * @angle A floating-point value that specifies the angle of the rotation.
	 * @rotationPoint A string that specifies which side of the bounding box to rotate. Acceptable values are "top right",
	 */
	function rotateSelection(angle:Float, ?rotationPoint:String) : Void;
	/**
	 * Saves the document in its default location. This method is equivalent to selecting File &gt; Save.To specify a name for the file (instead of saving it with the same name), use fl.saveDocument().Note: If the file is new and has not been modified or saved, or if the file has not been modified since the last time it wassaved, this method has no effect and false is returned. To allow an unsaved or unmodified file to be saved, usedocument.saveAndCompact() or fl.saveDocumentAs().
	 * @bOkToSaveAs An optional parameter that, if true or omitted, and the file was never saved, opens the Save As dialog
	 */
	function save(?bOkToSaveAs:Bool) : Bool;
	/**
	 * Saves and compacts the file. This method is equivalent to selecting File &gt; Save and Compact.Note: If the file has never been saved, this method returns true even if the user cancels the Save As dialog box. Toaccurately determine whether the file was saved, use fl.saveDocumentAs().
	 * @bOkToSaveAs An optional parameter that, if true or omitted and the file was never saved, opens the Save As dialog
	 */
	function saveAndCompact(?bOkToSaveAs:Bool) : Bool;
	function saveAVersion() : Bool;
	/**
	 * Scales the selection by a specified amount. This method is equivalent to using the Free Transform tool to scalethe object.
	 * @xScale A floating-point value that specifies the amount of x by which to scale.
	 * @yScale A floating-point value that specifies the amount of y by which to scale.
	 * @whichCorner A string value that specifies the edge about which the transformation occurs. If omitted, scaling occurs
	 */
	function scaleSelection(xScale:Float, yScale:Float, ?whichCorner:String) : Void;
	/**
	 * Selects all items on the Stage. This method is equivalent to pressing Control+A (Windows) or Command+A(Macintosh) or selecting Edit &gt; Select All.
	 */
	function selectAll() : Void;
	/**
	 * Deselects any selected items.
	 */
	function selectNone() : Void;
	/**
	 * Sets the preferences for document.align(), document.distribute(), document.match(), anddocument.space() to act on the document. This method is equivalent to enabling the To Stage button in the Alignpanel.
	 * @bToStage A Boolean value that, if set to true, aligns objects to the Stage. If set to false, it does not.
	 */
	function setAlignToDocument(bToStage:Bool) : Void;
	/**
	 * Sets the blending mode for the selected objects.
	 * @mode A string that represents the desired blending mode for the selected objects. Acceptable values are "normal",
	 */
	function setBlendMode(mode:String) : Void;
	/**
	 * Sets the fill settings for the Tools panel, Property inspector, and any selected shapes. This allows a script to setthe fill settings before drawing the object, rather than drawing the object, selecting it, and changing the fill settings. Italso lets a script change the Tools panel and Property inspector fill settings.
	 * @fill A Fill object that specifies the fill settings to be used. See Fill object.
	 */
	function setCustomFill(fill:Fill) : Void;
	/**
	 * Sets the stroke settings for the Tools panel, Property inspector, and any selected shapes. This allows a scriptto set the stroke settings before drawing the object, rather than drawing the object, selecting it, and changing the strokesettings. It also lets a script change the Tools panel and Property inspector stroke settings.
	 * @stroke A Stroke object.
	 */
	function setCustomStroke(stroke:Stroke) : Void;
	/**
	 * Sets the specified Element property on selected object(s) in the document. This method does nothing if thereis no selection.
	 * @property A string that specifies the name of the Element property to set. For a complete list of properties and values,
	 * @value An integer that specifies the value to set in the specified Element property.
	 */
	function setElementProperty(property:String, value:Int) : Void;
	/**
	 * Sets the specified textAttrs property of the selected text items to the specified value. For a list of propertynames and allowable values, see the Property summary table for the TextAttrs object. If the optional parameters arenot passed, the method sets the style of the currently selected text range, or the whole text field if no text is selected. Ifonly startIndex is passed, the method sets that characterтАЩs attributes. If startIndex and endIndex are passed, the methodsets the attributes on the characters starting from startIndex up to, but not including, endIndex. If paragraph styles arespecified, all the paragraphs that fall within the range are affected.
	 * @attrName A string that specifies the name of the TextAttrs property to change.
	 * @attrValue The value to which to set the TextAttrs property. For a list of property names and expected values, see
	 * @startIndex An integer value that specifies the index of the first character that is affected. This parameter is optional.
	 * @endIndex An integer value that specifies the index of the last character that is affected. This parameter is optional.
	 */
	function setElementTextAttr(attrName:String, attrValue:String, ?startIndex:Int, ?endIndex:Int) : Bool;
	/**
	 * Changes the fill color of the selection to the specified color. For information on changing the fill color in theTools panel and Property inspector, see document.setCustomFill().
	 * @color The color of the fill, in one of the following formats:
	 */
	function setFillColor(color:Dynamic) : Void;
	/**
	 * Sets a specified filter property for the currently selected objects (assuming that the object supports thespecified filter).
	 * @property A string specifying the property to be set. Acceptable values are "blurX", "blurY", "quality", angle",
	 * @filterIndex An integer specifying the zero-based index of the filter in the Filters list.
	 * @value A number or string specifying the value to be set for the specified filter property. Acceptable values depend on
	 */
	function setFilterProperty(property:String, filterIndex:Int, value:String) : Void;
	/**
	 * Applies filters to the selected objects. Use this method after calling document.getFilters() and making anydesired changes to the filters.
	 * @filterArray The array of filters currently specified.
	 */
	function setFilters(filterArray:Array<Filter>) : Void;
	/**
	 * Methods; sets the opacity of the instance.
	 * @opacity An integer between 0 (transparent) and 100 (completely saturated) that adjusts the transparency of the
	 */
	function setInstanceAlpha(opacity:Int) : Void;
	/**
	 * Sets the brightness for the instance.
	 * @brightness An integer that specifies brightness as a value from -100 (black) to 100 (white).
	 */
	function setInstanceBrightness(brightness:Int) : Void;
	/**
	 * Sets the tint for the instance.
	 * @color The color of the tint, in one of the following formats:
	 * @strength An integer between 0 and 100 that specifies the opacity of the tint.
	 */
	function setInstanceTint(color:Dynamic, strength:Int) : Void;
	/**
	 * Sets the XML metadata for the specified document, overwriting any existing metadata. The XML passed asstrMetadata is validated and may be rewritten before being stored. If it cannot be validated as legal XML or violatesspecific rules, then the XML metadata is not set and false is returned. (If false is returned, there is no way to getmore detailed error information.)Note: Even if true is returned, the XML that is set may not be exactly the same string that you passed in. To get the exactvalue to which the XML was set, use document.getMetadata().The format of the metadata is RDF that is compliant with the XMP specification. For more information about RDFand XMP, see the following sources:тАв  The RDF Primer at www.w3.org/TR/rdf-primer/ тАв  The RDF specification at www.w3.org/TR/1999/REC-rdf-syntax-19990222/ тАв  The XMP home page at www.adobe.com/products/xmp/
	 * @strMetadata A string containing the XML metadata to be associated with the document. For more information, see
	 */
	function setMetadata(strMetadata:String) : Bool;
	/**
	 * Sets the value of an XML settings string in a mobile FLA file. (Most mobile FLA files have an XML string thatdescribes the settings within the document.)
	 * @xmlString A string that describes the XML settings in a mobile FLA file.
	 */
	function setMobileSettings(xmlString:String) : Bool;
	/**
	 * Specifies a value for a specified property of primitive Oval objects.
	 * @propertyName A string that specifies the property to be set. For acceptable values, see the Property summary table for
	 * @value The value to be assigned to the property. Acceptable values vary depending on the property you specify in
	 */
	function setOvalObjectProperty(propertyName:String, value:Dynamic) : Void;
	/**
	 * Sets the version of the Flash Player targeted by the specified document. This is the same value as that set inthe Publish Settings dialog box.
	 * @version A string that represents the version of Flash Player targeted by the specified document. Acceptable values are
	 */
	function setPlayerVersion(version:String) : Bool;
	/**
	 * Specifies a value for a specified property of primitive Rectangle objects.
	 * @propertyName A string that specifies the property to be set. For acceptable values, see the Property summary table for
	 * @value The value to be assigned to the property. Acceptable values vary depending on the property you specify in
	 */
	function setRectangleObjectProperty(propertyName:String, value:Dynamic) : Void;
	/**
	 * Moves and resizes the selection in a single operation.If you pass a value for bContactSensitiveSelection, it is valid only for this method and doesnтАЩt affect the ContactSensitive selection mode for the document (see fl.contactSensitiveSelection).
	 * @boundingRectangle A rectangle that specifies the new location and size of the selection. For information on the
	 * @bContactSensitiveSelection A Boolean value that specifies whether the Contact Sensitive selection mode is
	 */
	function setSelectionBounds(boundingRectangle:JSFLRect, ?bContactSensitiveSelection:Bool) : Void;
	/**
	 * Draws a rectangular selection marquee relative to the Stage, using the specified coordinates. This is unlikedocument.getSelectionRect(), in which the rectangle is relative to the object being edited.This method is equivalent to dragging a rectangle with the Selection tool. An instance must be fully enclosed by therectangle to be selected.If you pass a value for bContactSensitiveSelection, it is valid only for this method and doesnтАЩt affect the ContactSensitive selection mode for the document (see fl.contactSensitiveSelectionNote: Repeating setSelectionRect() using the History panel or menu item repeats the step previous to thesetSelectionRect() operation.
	 * @rect A rectangle object to set as selected. For information on the format of rect, see document.addNewRectangle().
	 * @bReplaceCurrentSelection A Boolean value that specifies whether the method replaces the current selection
	 * @bContactSensitiveSelection A Boolean value that specifies whether the Contact Sensitive selection mode is
	 */
	function setSelectionRect(rect:JSFLRect, ?bReplaceCurrentSelection:Bool, ?bContactSensitiveSelection:Bool) : Void;
	/**
	 * Specifies the vanishing point for viewing 3D objects.
	 * @point A point that specifies the x and y coordinates of the location at which to set the vanishing point for viewing 3D
	 */
	function setStageVanishingPoint(point:JSFLPoint) : Void;
	/**
	 * Specifies the perspective angle for viewing 3D objects.
	 * @angle A floating point value between 0.0 and 179.0.
	 */
	function setStageViewAngle(angle:Float) : Void;
	/**
	 * Sets the color, width, and style of the selected stroke. For information on changing the stroke in the Toolspanel and Property inspector, see document.setCustomStroke().
	 * @color The color of the stroke, in one of the following formats:
	 * @size A floating-point value that specifies the new stroke size for the selection.
	 * @strokeType A string that specifies the new type of stroke for the selection. Acceptable values are "hairline",
	 */
	function setStroke(color:Dynamic, size:Float, strokeType:String) : Void;
	/**
	 * Changes the stroke color of the selection to the specified color. For information on changing the stroke in theTools panel and Property inspector, see document.setCustomStroke().
	 * @color The color of the stroke, in one of the following formats:
	 */
	function setStrokeColor(color:Dynamic) : Void;
	/**
	 * Changes the stroke size of the selection to the specified size. For information on changing the stroke in theTools panel and Property inspector, see document.setCustomStroke().
	 * @size A floating-point value from 0.25 to 10 that specifies the stroke size. The method ignores precision greater than
	 */
	function setStrokeSize(size:Float) : Void;
	/**
	 * Changes the stroke style of the selection to the specified style. For information on changing the stroke in theTools panel and Property inspector, see document.setCustomStroke().
	 * @strokeType A string that specifies the stroke style for the current selection. Acceptable values are "hairline",
	 */
	function setStrokeStyle(strokeType:String) : Void;
	/**
	 * Changes the bounding rectangle for the selected text item to the specified size. This method causes the text toreflow inside the new rectangle; the text item is not scaled or transformed. The values passed in boundingRectangle areused as follows:тАв  If the text is horizontal and static, the method takes into account only the width value passed in boundingRectangle;the height is automatically computed to fit all the text.тАв  If the text is vertical (and therefore static), the method takes into account only the height value passed inboundingRectangle; the width is automatically computed to fit all the text.тАв  If the text is dynamic or input, the method takes into account both the width and height values passed inboundingRectangle, and the resulting rectangle might be larger than needed to fit all the text. However, if theparameters specify a rectangle size that is too small to fit all the text, the method takes into account only the widthvalue passed in boundingRectangle (the height is automatically computed to fit all the text).
	 * @boundingRectangle A rectangle that specifies the new size within which the text item should flow. For information
	 */
	function setTextRectangle(boundingRectangle:JSFLRect) : Bool;
	/**
	 * Sets the text selection of the currently selected text field to the values specified by the startIndex and endIndexvalues. Text editing is activated, if it isnтАЩt already.
	 * @startIndex An integer that specifies the position of the first character to select. The first character position is 0
	 * @endIndex An integer that specifies the end position of the selection up to, but not including, endIndex. The first
	 */
	function setTextSelection(startIndex:Int, endIndex:Int) : Bool;
	/**
	 * Inserts a string of text. If the optional parameters are not passed, the existing text selection is replaced; if theText object isnтАЩt currently being edited, the whole text string is replaced. If only startIndex is passed, the string passedis inserted at this position. If startIndex and endIndex are passed, the string passed replaces the segment of text startingfrom startIndex up to, but not including, endIndex.
	 * @text A string of the characters to insert in the text field.
	 * @startIndex An integer that specifies the first character to replace. The first character position is 0 (zero). This
	 * @endIndex An integer that specifies the last character to replace. This parameter is optional.
	 */
	function setTextString(text:String, ?startIndex:Int, ?endIndex:Int) : Bool;
	/**
	 * Sets the position of the current selectionтАЩs transformation point.
	 * @transformationPoint A point (for example, {x:10, y:20}, where x and y are floating-point numbers) that
	 */
	function setTransformationPoint(transformationPoint:JSFLPoint) : Void;
	/**
	 * Skews the selection by a specified amount. The effect is the same as using the Free Transform tool to skew theobject.
	 * @xSkew A floating-point number that specifies the amount of x by which to skew, measured in degrees.
	 * @ySkew A floating-point number that specifies the amount of y by which to skew, measured in degrees.
	 * @whichEdge A string that specifies the edge where the transformation occurs; if omitted, skew occurs at the
	 */
	function skewSelection(xSkew:Float, ySkew:Float, ?whichEdge:String) : Void;
	/**
	 * Smooths the curve of each selected fill outline or curved line. This method performs the same action as theSmooth button in the Tools panel.
	 */
	function smoothSelection() : Void;
	/**
	 * Spaces the objects in the selection evenly.
	 * @direction A string that specifies the direction in which to space the objects in the selection. Acceptable values are
	 * @bUseDocumentBounds A Boolean value that, when set to true, spaces the objects to the document bounds. Otherwise,
	 */
	function space(direction:String, ?bUseDocumentBounds:Bool) : Void;
	/**
	 * Straightens the currently selected strokes. This method is equivalent to using the Straighten button in theTools panel.
	 */
	function straightenSelection() : Void;
	/**
	 * Swaps the current selection with the specified one. The selection must contain a graphic, button, movie clip,video, or bitmap. This method displays an error message if no object is selected or the given object could not be found.
	 * @name A string that specifies the name of the library item to use.
	 */
	function swapElement(name:String) : Void;
	/**
	 * Swaps the Stroke and Fill colors.
	 */
	function swapStrokeAndFill() : Void;
	function synchronizeWithHeadVersion() : Bool;
	/**
	 * Executes a Test Movie operation on the document.
	 * @abortIfErrorsExist Boolean; the default value is false. If set to true, the test movie session will not start and the .swf
	 */
	function testMovie(?abortIfErrorsExist:Bool) : Void;
	/**
	 * Executes a Test Scene operation on the current scene of the document.
	 */
	function testScene() : Void;
	/**
	 * Performs a trace bitmap on the current selection. This method is equivalent to selecting Modify &gt; Bitmap &gt;Trace Bitmap.
	 * @threshold An integer that controls the number of colors in your traced bitmap. Acceptable values are integers
	 * @minimumArea An integer that specifies the radius measured in pixels. Acceptable values are integers between 1 and
	 * @curveFit A string that specifies how smoothly outlines are drawn. Acceptable values are "pixels", "very tight",
	 * @cornerThreshold A string that is similar to curveFit, but it pertains to the corners of the bitmap image. Acceptable
	 */
	function traceBitmap(threshold:Int, minimumArea:Int, curveFit:String, cornerThreshold:String) : Void;
	/**
	 * Method: sets the XYZ position around which the selection is translated or rotated. This method is available only formovie clips.
	 * @xyzCoordinate An XYZ coordinate that specifies the center point for 3D rotation or translation.
	 */
	function translate3DCenter(xyzCoordinate:{ x:Float, y:Float, z:Float }) : Void;
	/**
	 * Method: applies a 3D translation to the selection. This method is available only for movie clips.
	 * @xyzCoordinate An XYZ coordinate that specifies the axes for 3D translation.
	 * @bGlobalTransform A Boolean value that specifies whether the transformation mode should be global (true) or local
	 */
	function translate3DSelection(xyzCoordinate:{ x:Float, y:Float, z:Float }, bGlobalTransform:Bool) : Void;
	/**
	 * Performs a general transformation on the current selection by applying the matrix specified in the arguments.For more information, see the element.matrix property.
	 * @a A floating-point number that specifies the (0,0) element of the transformation matrix.
	 * @b A floating-point number that specifies the (0,1) element of the transformation matrix.
	 * @c A floating-point number that specifies the (1,0) element of the transformation matrix.
	 * @d A floating-point number that specifies the (1,1) element of the transformation matrix.
	 */
	function transformSelection(a:Float, b:Float, c:Float, d:Float) : Void;
	/**
	 * Ungroups the current selection.
	 */
	function unGroup() : Void;
	/**
	 * Combines all selected shapes into a drawing object.
	 */
	function union() : Bool;
	/**
	 * Unlocks all locked elements on the currently selected frame.
	 */
	function unlockAllElements() : Void;
	/**
	 * Posts an XMLUI dialog box. See fl.xmlui.
	 * @fileURI A string, expressed as a file:/// URI, that specifies the path to the XML file defining the controls in the panel.
	 */
	function xmlPanel(fileURI:String) : Dynamic<String>;
}

@:enum
abstract DocumentDataType(String) {
	var Integer = "integer";
	var IntegerArray = "integerArray";
	var Double = "double";
	var DoubleArray = "doubleArray";
	var string = "string";
	var ByteArray = "byteArray";
}

@:enum
abstract AlignMode(String) {
	var Left = "left";
	var Right = "right";
	var Top = "top";
	var Bottom = "bottom";
	var VerticalCenter = "vertical center";
	var HorizontalCenter = "horizontal center";
}

@:enum
abstract ArrangeMode(String) {
	var Back = "back";
	var Backward = "backward";
	var Forward = "forward";
	var Front = "front";
}

@:enum
abstract RegistrationPoint(String) {
	var TopLeft = "top left";
	var TopConter = "top center";
	var TopRight = "top right";
	var CenterLeft = "center left";
	var Center = "center";
	var CenterRight = "center right";
	var BottomLeft = "bottom left";
	var BottomCenter = "bottom center";
	var BottomRight = "bottom right";
}

@:enum
abstract DistributeMode(String) {
	var LeftEdge = "left edge";
	var HorizontalCenter = "horizontal center";
	var RightEdge = "right edge";
	var TopEdge = "top edge";
	var VerticalCenter = "vertical center";
	var BottomEdge = "bottom edge";
}

@:enum
abstract EditMode(String) {
	var InPlace = "inPlace";
	var NewWindow = "newWindow";
}