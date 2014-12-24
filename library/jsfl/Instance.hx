package jsfl;

typedef Instance =
{>Element,
	/**
	 * Read-only. A string that represents the type of instance. Possible values are "symbol", "bitmap", "embeddedvideo", "linked video", "video", and "compiled clip".In Flash MX 2004, the value of instance.instanceType for an item added to the library usinglibrary.addNewItem("video") is "embedded_video". In Flash 8 and later, the value is "video". Seelibrary.addNewItem().
	 */
	var instanceType : String;
	/**
	 * A library item used to instantiate this instance. You can change this property only to another library item ofthe same type (that is, you cannot set a symbol instance to refer to a bitmap). See library object.
	 */
	var libraryItem : Item;
}