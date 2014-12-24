package jsfl;

typedef CompiledClipInstance =
{>Instance,
	/**
	 * A string that is equivalent to the Name field in the Accessibility panel. Screen readers identify objects byreading the name aloud.
	 */
	var accName : String;
	/**
	 * A string that represents the ActionScript for this instance; equivalent to symbolInstance.actionScript.
	 */
	var actionScript : String;
	/**
	 * A string that is equivalent to the Description field in the Accessibility panel. The description is read by thescreen reader.
	 */
	var description : String;
	/**
	 * A Boolean value that enables and disables the children of the object to be accessible. This is equivalent to theinverse logic of the Make Child Objects Accessible setting in the Accessibility panel. If forceSimple is true, it is thesame as the Make Child Objects Accessible option being unchecked. If forceSimple is false, it is the same as theMake Child Object Accessible option being checked.
	 */
	var forceSimple : Bool;
	/**
	 * A string that is equivalent to the Shortcut field in the Accessibility panel. The shortcut is read by the screenreader. This property is not available for dynamic text fields.
	 */
	var shortcut : String;
	/**
	 * A Boolean value that enables or disables the accessibility of the object; equivalent to the inverse logic of MakeObject Accessible setting in the Accessibility panel. That is, if silent is true, then Make Object Accessible isunchecked. If silent is false, then Make Object Accessible is checked.
	 */
	var silent : Bool;
	/**
	 * An integer that is equivalent to the Tab Index field in the Accessibility panel. Creates a tab order in whichobjects are accessed when the user presses the Tab key.
	 */
	var tabIndex : Int;
}