package jsfl;

typedef Timeline =
{
	/**
	 * The zero-based index for the frame at the current playhead location.
	 */
	var currentFrame : Int;
	/**
	 * The zero-based index for the currently active layer. A value of 0 specifies the top layer, a value of 1 specifiesthe layer below it, and so on.
	 */
	var currentLayer : Int;
	/**
	 * Read-only. An integer that represents the number of frames in this timelineтАЩs longest layer.
	 */
	var frameCount : Int;
	/**
	 * Read-only. An integer that represents the number of layers in the specified timeline.
	 */
	var layerCount : Int;
	/**
	 * Read-only. An array of layer objects.
	 */
	var layers : Array<Layer>;
	/**
	 * Read-only. If the timeline's libraryItem property is null, the timeline belongs to a scene. If it's not null, youcan treat it like a LibraryItem object.
	 */
	var libraryItem : Item;
	/**
	 * A string that specifies the name of the current timeline. This name is the name of the current scene, screen(slide or form), or symbol that is being edited.
	 */
	var name : String;
	
	/**
	 * Adds a motion guide layer above the current layer and attaches the current layer to the newly added guidelayer, converting the current layer to a layer of type "Guided".This method functions only on a layer of type "Normal". It has no effect on a layer whose type is "Folder", "Mask","Masked", "Guide", or "Guided".
	 */
	function addMotionGuide() : Int;
	/**
	 * Adds a new layer to the document and makes it the current layer.
	 * @name A string that specifies the name for the new layer. If you omit this parameter, a new default layer name is assigned
	 * @layerType A string that specifies the type of layer to add. If you omit this parameter, a тАЬNormalтАЭ type layer is created.
	 * @bAddAbove A Boolean value that, if set to true (the default), causes Flash to add the new layer above the current layer;
	 */
	function addNewLayer(?name:String, ?layerType:String, ?bAddAbove:Bool) : Int;
	/**
	 * Deletes all the contents from a frame or range of frames on the current layer.
	 * @startFrameIndex A zero-based index that defines the beginning of the range of frames to clear. If you omit
	 * @endFrameIndex A zero-based index that defines the end of the range of frames to clear. The range goes up to, but does
	 */
	function clearFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	/**
	 * Converts a keyframe to a regular frame and deletes its contents on the current layer.
	 * @startFrameIndex A zero-based index that defines the beginning of the range of frames to clear. If you omit
	 * @endFrameIndex A zero-based index that defines the end of the range of frames to clear. The range goes up to, but does
	 */
	function clearKeyframes(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	/**
	 * Converts frames to blank keyframes on the current layer.
	 * @startFrameIndex A zero-based index that specifies the starting frame to convert to keyframes. If you omit
	 * @endFrameIndex A zero-based index that specifies the frame at which the conversion to keyframes will stop. The range
	 */
	function convertToBlankKeyframes(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	/**
	 * Converts a range of frames to keyframes (or converts the selection if no frames are specified) on the currentlayer.
	 * @startFrameIndex A zero-based index that specifies the first frame to convert to keyframes. If you omit
	 * @endFrameIndex A zero-based index that specifies the frame at which conversion to keyframes will stop. The range of
	 */
	function convertToKeyframes(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	/**
	 * Copies a range of frames on the current layer to the clipboard.
	 * @startFrameIndex A zero-based index that specifies the beginning of the range of frames to copy. If you omit
	 * @endFrameIndex A zero-based index that specifies the frame at which to stop copying. The range of frames to copy
	 */
	function copyFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	/**
	 * Copies the layers that are currently selected in the Timeline, or the layers in the specified range. Optionalarguments can be provided in order to specify a layer or range of layers to copy.
	 * @startLayerIndex Optional. A zero-based index that specifies the beginning of the range of layers to copy. If you omit
	 * @endLayerIndex Optional. A zero-based index that specifies the layer at which to stop copying. The range of layers to
	 */
	function copyLayers(?startLayerIndex:Int, ?endLayerIndex:Int) : Void;
	/**
	 * Copies motion on selected frames, either from a motion tween or from frame-by-frame animation. You canthen use timeline.pasteMotion() to apply the motion to other frames.To copy motion as text (code) that you can paste into a script, see timeline.copyMotionAsAS3().
	 */
	function copyMotion() : Void;
	/**
	 * Copies motion on selected frames, either from a motion tween or from frame-by-frame animation, to theclipboard as ActionScript 3.0 code. You can then paste this code into a script.To copy motion in a format that you can apply to other frames, see timeline.copyMotion().
	 */
	function copyMotionAsAS3() : Void;
	/**
	 * Creates a new motion object. The parameters are optional, and if specified set the timeline selection to theindicated frames prior to creating the motion object.
	 * @startFrame Specifies the first frame at which to create motion objects. If you omit startFrame, the method uses the
	 * @endFrame Specifies the frame at which to stop creating motion objects; the range of frames goes up to, but does not
	 */
	function createMotionObject(?startFrame:Frame, ?endFrame:Frame) : Void;
	/**
	 * Sets the frame.tweenType property to motion for each selected keyframe on the current layer, and convertseach frameтАЩs contents to a single symbol instance if necessary. This property is the equivalent to the Create MotionTween menu item in the Flash authoring tool.
	 * @startFrameIndex A zero-based index that specifies the beginning frame at which to create a motion tween. If you
	 * @endFrameIndex A zero-based index that specifies the frame at which to stop the motion tween. The range of frames
	 */
	function createMotionTween(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	/**
	 * Cuts a range of frames on the current layer from the timeline and saves them to the clipboard.
	 * @startFrameIndex A zero-based index that specifies the beginning of a range of frames to cut. If you omit
	 * @endFrameIndex A zero-based index that specifies the frame at which to stop cutting. The range of frames goes up to,
	 */
	function cutFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	/**
	 * Cuts the layers that are currently selected in the Timeline, or the layers in the specified range. Optionalarguments can be provided in order to specify a layer or range of layers to cut.
	 * @startLayerIndex Optional. A zero-based index that specifies the beginning of the range of layers to cut. If you omit
	 * @endLayerIndex Optional. A zero-based index that specifies the layer at which to stop cutting. The range of layers to
	 */
	function cutLayers(?startLayerIndex:Int, ?endLayerIndex:Int) : Void;
	/**
	 * Deletes a layer. If the layer is a folder, all layers within the folder are deleted. If you do not specify the layerindex, Flash deletes the currently selected layers.
	 * @index A zero-based index that specifies the layer to be deleted. If there is only one layer in the timeline, this method
	 */
	function deleteLayer(?index:Int) : Void;
	/**
	 * Duplicates the layers that are currently selected in the Timeline, or the layers in the specified range. Optionalarguments can be provided in order to specify a layer or range of layers to duplicate.
	 * @startLayerIndex Optional. A zero-based index that specifies the beginning of the range of layers to copy. It also
	 * @endLayerIndex Optional. A zero-based index that specifies the layer at which to stop copying. The range of layers to
	 */
	function duplicateLayers(startLayerIndex:Int, endLayerIndex:Int) : Void;
	/**
	 * Expands or collapses the specified folder or folders. If you do not specify a layer, this method operates on thecurrent layer.
	 * @bExpand A Boolean value that, if set to true, causes the method to expand the folder; false causes the method to
	 * @bRecurseNestedParents A Boolean value that, if set to true, causes all the layers within the specified folder to be
	 * @index A zero-based index of the folder to expand or collapse. Use -1 to apply to all layers (you also must set
	 */
	function expandFolder(bExpand:Bool, ?bRecurseNestedParents:Bool, ?index:Int) : Void;
	/**
	 * Finds an array of indexes for the layers with the given name. The layer index is flat, so folders are consideredpart of the main index.
	 * @name A string that specifies the name of the layer to find.
	 */
	function findLayerIndex(name:String) : Array<Int>;
	/**
	 * Retrieves the specified propertyтАЩs value for the selected frames.
	 * @property A string that specifies the name of the property for which to get the value. See the Property summary for
	 * @startFrameIndex A zero-based index that specifies the starting frame number for which to get the value. If you omit
	 * @endFrameIndex A zero-based index that specifies the end of the range of frames to select. The range goes up to, but
	 */
	function getFrameProperty(property:String, ?startFrameIndex:Int, ?endFrameIndex:Int) : Dynamic;
	/**
	 * Method: returns an XML string that represents the current positions of the horizontal and vertical guide lines for atimeline (View &gt; Guides &gt;Show Guides). To apply these guide lines to a timeline, use timeline.setGuidelines().
	 */
	function getGuidelines() : String;
	/**
	 * Retrieves the specified propertyтАЩs value for the selected layers.
	 * @property A string that specifies the name of the property whose value you want to retrieve. For a list of properties,
	 */
	function getLayerProperty(property:String) : Dynamic;
	/**
	 * Retrieves the currently selected frames in an array.
	 */
	function getSelectedFrames() : Array<Int>;
	/**
	 * Gets the zero-based index values of the currently selected layers.
	 */
	function getSelectedLayers() : Array<Int>;
	/**
	 * Inserts a blank keyframe at the specified frame index; if the index is not specified, the method inserts the blankkeyframe by using the playhead/selection. See also timeline.insertKeyframe().
	 * @frameNumIndex A zero-based index that specifies the frame at which to insert the keyframe. If you omit
	 */
	function insertBlankKeyframe(?frameNumIndex:Int) : Void;
	/**
	 * Inserts the specified number of frames at the specified index.If no parameters are specified, this method works as follows:тАв  If one or more frames are selected, the method inserts the selected number of frames at the location of the firstselected frame in the current layer. That is, if frames 6 through 10 are selected (a total of five frames), the methodadds five frames at Frame 6 in the layer containing the selected frames.тАв  If no frames are selected, the method inserts one frame at the current frame on all layers.If parameters are specified, the method works as follows:тАв  If only numFrames is specified, inserts the specified number of frames at the current frame on the current layer.тАв  If numFrames is specified and bAllLayers is true, inserts the specified number of frames at the current frame on alllayers.тАв  If all three parameters are specified, inserts the specified number of frames at the specified index (frameIndex); thevalue passed for bAllLayers determines if the frames are added only to the current layer or to all layers.If the specified or selected frame is a regular frame, the frame is inserted at that frame. For example, if you have aspan of 10 frames numbered 1-10 and you select Frame 5 (or pass a value of 4 for frameIndex), this method adds aframe at Frame 5, and the length of the frame span becomes 11 frames. If Frame 5 is selected and it is a keyframe,this method inserts a frame at Frame 6 regardless of whether the frame next to it is also a keyframe.
	 * @numFrames An integer that specifies the number of frames to insert. If you omit this parameter, the method inserts
	 * @bAllLayers A Boolean value that, if set to true (the default), causes the method to insert the specified number of
	 * @frameNumIndex A zero-based index that specifies the frame at which to insert a new frame. This parameter is
	 */
	function insertFrames(?numFrames:Int, ?bAllLayers:Bool, ?frameNumIndex:Int) : Void;
	/**
	 * Inserts a keyframe at the specified frame. If you omit the parameter, the method inserts a keyframe using theplayhead or selection location.This method works the same as timeline.insertBlankKeyframe() except that the inserted keyframe contains thecontents of the frame it converted (that is, itтАЩs not blank).
	 * @frameNumIndex A zero-based index that specifies the frame index at which to insert the keyframe in the current layer.
	 */
	function insertKeyframe(?frameNumIndex:Int) : Void;
	/**
	 * Pastes the range of frames from the clipboard into the specified frames.
	 * @startFrameIndex A zero-based index that specifies the beginning of a range of frames to paste. If you omit
	 * @endFrameIndex A zero-based index that specifies the frame at which to stop pasting frames. The method pastes up
	 */
	function pasteFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	/**
	 * Paste layers that have been previously cut or copied above the currently selected layer, or above the specifiedlayer index. If the specified layer is a folder layer, the layers are pasted into the folder. Returns the lowest layer indexof the layers that were pasted. This action does not affect the system clipboard.
	 * @layerIndex Optional. A zero-based index that specifies the layer above which the layers on the clipboard are pasted.
	 */
	function pasteLayers(?layerIndex:Int) : Int;
	/**
	 * Pastes the range of motion frames retrieved by timeline.copyMotion() to the Timeline. If necessary,existing frames are displaced (moved to the right) to make room for the frames being pasted.
	 */
	function pasteMotion() : Void;
	/**
	 * Deletes the frame.
	 * @startFrameIndex A zero-based index that specifies the first frame at which to start removing frames. If you omit
	 * @endFrameIndex A zero-based index that specifies the frame at which to stop removing frames; the range of frames
	 */
	function removeFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	/**
	 * Removes the motion object and converts the frame(s) back to static frames. The parameters are optional, andif specified set the timeline selection to the indicated frames prior to removing the motion object.
	 * @startFrame Specifies the first frame at which to start removing motion objects. If you omit startFrame, the method
	 * @endFrame Specifies the frame at which to stop removing motion objects; the range of frames goes up to, but does not
	 */
	function removeMotionObject(?startFrame:Frame, ?endFrame:Frame) : Void;
	/**
	 * Moves the first specified layer before or after the second specified layer.
	 * @layerToMove A zero-based index that specifies which layer to move.
	 * @layerToPutItBy A zero-based index that specifies which layer you want to move the layer next to. For example, if
	 * @bAddBefore Specifies whether to move the layer before or after layerToPutItBy. If you specify false, the layer is
	 */
	function reorderLayer(layerToMove:Int, layerToPutItBy:Int, ?bAddBefore:Bool) : Void;
	/**
	 * Reverses a range of frames.
	 * @startFrameIndex A zero-based index that specifies the first frame at which to start reversing frames. If you omit
	 * @endFrameIndex A zero-based index that specifies the first frame at which to stop reversing frames; the range of
	 */
	function reverseFrames(?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	/**
	 * Selects all the frames in the current timeline.
	 */
	function selectAllFrames() : Void;
	/**
	 * Sets the property of the Frame object for the selected frames.
	 * @property A string that specifies the name of the property to be modified. For a complete list of properties and values,
	 * @value Specifies the value to which you want to set the property. To determine the appropriate values and type, see the
	 * @startFrameIndex A zero-based index that specifies the starting frame number to modify. If you omit
	 * @endFrameIndex A zero-based index that specifies the first frame at which to stop. The range of frames goes up to, but
	 */
	function setFrameProperty(property:String, value:Dynamic, ?startFrameIndex:Int, ?endFrameIndex:Int) : Void;
	/**
	 * Method: replaces the guide lines for the timeline (View &gt; Guides &gt; Show Guides) with the information specified inxmlString. To retrieve an XML string that can be passed to this method, use timeline.getGuidelines().To view the newly set guide lines, you may have to hide them and then view them.
	 * @xmlString An XML string that contains information on the guidelines to apply.
	 */
	function setGuidelines(xmlString:String) : Bool;
	/**
	 * Sets the specified property on all the selected layers to a specified value.
	 * @property A string that specifies the property to set. For a list of properties, see тАЬLayer objectтАЭ on page 319.
	 * @value The value to which you want to set the property. Use the same type of value you would use when setting the
	 * @layersToChange A string that identifies which layers should be modified. Acceptable values are "selected", "all",
	 */
	function setLayerProperty(property:String, value:Dynamic, ?layersToChange:String) : Void;
	/**
	 * Selects a range of frames in the current layer or sets the selected frames to the selection array passed into thismethod.
	 * @startFrameIndex A zero-based index that specifies the beginning frame to set.
	 * @endFrameIndex A zero-based index that specifies the end of the selection; endFrameIndex is the frame after the last
	 * @bReplaceCurrentSelection A Boolean value that, if it is set to true, causes the currently selected frames to be
	 * @selectionList An array of three integers, as returned by timeline.getSelectedFrames().
	 */
	function setSelectedFrames(startFrameIndex:Int, ?endFrameIndex:Int, ?bReplaceCurrentSelection:Bool, ?selectionList:Array<Int>) : Void;
	/**
	 * Sets the layer to be selected, and also makes the specified layer the current layer. Selecting a layer also meansthat all the frames in the layer are selected.
	 * @index A zero-based index for the layer to select.
	 * @bReplaceCurrentSelection A Boolean value that, if it is set to true, causes the method to replace the current
	 */
	function setSelectedLayers(index:Int, ?bReplaceCurrentSelection:Bool) : Void;
	/**
	 * Shows the layer masking during authoring by locking the mask and masked layers. This method uses thecurrent layer if no layer is specified. If you use this method on a layer that is not of type Mask or Masked, Flash displaysan error in the Output panel.
	 * @layer A zero-based index of a mask or masked layer to show masking during authoring. This parameter is optional.
	 */
	function showLayerMasking(?layer:Int) : Void;
	/**
	 * Starts automatic playback of the timeline if it is currently playing. This method can be used with SWF panelsto control timeline playback in the authoring environment.
	 */
	function startPlayback() : Void;
	/**
	 * Stops automatic playback of the timeline if it is currently playing. This method can be used with SWF panelsto control timeline playback in the authoring environment.
	 */
	function stopPlayback() : Void;
}