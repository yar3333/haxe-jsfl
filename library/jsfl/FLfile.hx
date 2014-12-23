package jsfl;

@:native("FLfile") extern class FLfile
{
	static function copy(fileURI:String, copyURI:String) : Bool;
	static function createFolder(folderURI:String) : Bool;
	static function exists(fileURI:String) : Bool;
	static function getAttributes(fileOrFolderURI:String) : String;
	static function getCreationDate(fileOrFolderURI:String) : String;
	static function getCreationDateObj(fileOrFolderURI:String) : Date;
	static function getModificationDate(fileOrFolderURI:String) : String;
	static function getModificationDateObj(fileOrFolderURI:String) : Date;
	static function getSize(fileURI:String) : Int;
	static function listFolder(folderURI:String, ?filesOrDirectories:String) : Array<String>;
	static function platformPathToURI(fileName:String) : String;
	static function read(fileOrFolderURI:String) : String;
	static function remove(fileOrFolderURI:String) : Bool;
	static function runCommandLine(command:String) : Void;
	static function setAttributes(fileURI:String, strAttrs:String) : Bool;
	static function uriToPlatformPath(fileURI:String) : String;
	static function write(fileURI:String, textToWrite:String, ?strAppendMode:String) : Bool;
}