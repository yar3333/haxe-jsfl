package jsfl;

@:native("FLfile") extern class FLfile
{
	/**
	 * Flash MX 2004 7.2.
	 * Copies a file from one location to another. This method returns false if copyURI already exists.
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the file you want to copy.
	 * @param copyURI A string, expressed as a file:/// URI, that specifies the location and name of the copied file.
	 */
	static function copy(fileURI:String, copyURI:String) : Bool;
	/**
	 * Flash MX 2004 7.2.
	 * Creates one or more folders at the specified location.You can create multiple folders at one time. For example, the following command creates both the MyData and theTempData folders if they donтАЩt already exist:FLfile.createFolder("file:///c|/MyData/TempData")
	 * @param folderURI A folder URI that specifies the folder structure you want to create.
	 */
	static function createFolder(folderURI:String) : Bool;
	/**
	 * Flash MX 2004 7.2.
	 * Determines whether a specified file exists. If you specify a folder and a filename, the folder must already exist.To create folders, see FLfile.createFolder().
	 * @param fileURI A string, expressed as a file:/// URI, that specifies the file you want to verify.
	 */
	static function exists(fileURI:String) : Bool;
	/**
	 * Flash MX 2004 7.2.
	 * Returns a string representing the attributes of the specified file or folder, or an empty string if the file has nospecific attributes (that it, it is not read-only, not hidden, and so on). You should always use FLfile.exists() to testfor the existence of a file or folder before using this method.Characters in the string represent the attributes as follows:тАв R тАФ fileOrFolderURI is read-onlyтАв D тАФ fileOrFolderURI is a folder (directory)тАв H тАФ fileOrFolderURI is hidden (Windows only)тАв S тАФ fileOrFolderURI is a system file or folder (Windows only)тАв A тАФ fileOrFolderURI is ready for archiving (Windows only)For example, if fileOrFolderURI is a hidden folder, the string returned is "DH".
	 * @param fileOrFolderURI A string, expressed as a file:/// URI, specifying the file or folder whose attributes you want to
	 */
	static function getAttributes(fileOrFolderURI:String) : String;
	/**
	 * Flash MX 2004 7.2.
	 * Specifies how many seconds have passed between January 1, 1970 and the time the file or folder was created.This method is used primarily to compare the creation or modification dates of files or folders.
	 * @param fileOrFolderURI A string, expressed as a file:/// URI, specifying the file or folder whose creation date and time you
	 */
	static function getCreationDate(fileOrFolderURI:String) : String;
	/**
	 * Flash MX 2004 7.2.
	 * Returns a JavaScript Date object that represents the date and time when the specified file or folder was created.
	 * @param fileOrFolderURI A string, expressed as a file:/// URI, specifying the file or folder whose creation date and time you
	 */
	static function getCreationDateObj(fileOrFolderURI:String) : Date;
	/**
	 * Flash MX 2004 7.2.
	 * Specifies how many seconds have passed between January 1, 1970 and the time the file or folder was lastmodified. This method is used primarily to compare the creation or modification dates of files or folders.
	 * @param fileOrFolderURI A string, expressed as a file:/// URI, specifying the file whose modification date and time you want
	 */
	static function getModificationDate(fileOrFolderURI:String) : String;
	/**
	 * Flash MX 2004 7.2.
	 * Returns a JavaScript Date object that represents the date and time when the specified file or folder was lastmodified.
	 * @param fileOrFolderURI A string, expressed as a file:/// URI, specifying the file or folder whose modification date and time
	 */
	static function getModificationDateObj(fileOrFolderURI:String) : Date;
	/**
	 * Flash MX 2004 7.2.
	 * Returns an integer that represents the size of the specified file, in 
	 * bytes, or 0 if the file doesnтАЩt exist. If the returnvalue is 0, you can use FLfile.exists() to determine whether the file is a zero-byte file or the file doesnтАЩt exist.This method returns correct file size values only for files that are less than or equal to 2GB in size.
	 * @param fileURI A string, expressed as a file:/// URI, specifying the file whose size you want to retrieve.
	 */
	static function getSize(fileURI:String) : Int;
	/**
	 * Flash MX 2004 7.2.
	 * Returns an array of strings representing the contents of the folder.
	 * @param folderURI A string, expressed as a file:/// URI, specifying the folder whose contents you want to retrieve. You can
	 * @param filesOrDirectories An optional string that specifies whether to return only filenames or only folder (directory)
	 */
	static function listFolder(folderURI:String, ?filesOrDirectories:String) : Array<String>;
	/**
	 * Flash CS4 Professional.
	 * Converts a filename in a platform-specific format to a file:/// URI.
	 * @param fileName A string, expressed in a platform-specific format, specifying the filename you want to convert.
	 */
	static function platformPathToURI(fileName:String) : String;
	/**
	 * Flash MX 2004 7.2.
	 * Returns the contents of the specified file as a string, or null if the read fails.
	 * @param fileOrFolderURI A string, expressed as a file:/// URI, specifying the file or folder whose attributes you want to
	 */
	static function read(fileOrFolderURI:String) : String;
	/**
	 * Flash MX 2004 7.2.
	 * Deletes the specified file or folder. If the folder contains files, those files will be deleted as well. Files with theR (read-only) attribute cannot be removed.
	 * @param fileOrFolderURI A string, expressed as a file:/// URI, specifying the file or folder you want to remove (delete).
	 */
	static function remove(fileOrFolderURI:String) : Bool;
	static function runCommandLine(command:String) : Void;
	/**
	 * Flash MX 2004 7.2.
	 * Specifies system-level attributes for the specified file.The following values are valid for strAttrs:тАв N тАФ No specific attributes (not read-only, not hidden, and so on)тАв A тАФ Ready for archiving (Windows only)тАв R тАФ Read-only (on the Macintosh, read-only means тАЬlockedтАЭ)тАв W тАФ Writable (overrides R)тАв H тАФ Hidden (Windows only)тАв V тАФ Visible (overrides H, Windows only)If you include both R and W in strAttrs, the R is ignored and the file is set as writable. Similarly, if you pass H and V, theH is ignored and the file is set as visible.If you want to make sure the archive attribute is not set, use this command with the N parameter before settingattributes. That is, there is no direct counterpart to A that turns off the archive attribute.
	 * @param fileURI A string, expressed as a file:/// URI, specifying the file whose attributes you want to set.
	 * @param strAttrs A string specifying values for the attribute(s) you want to set. For acceptable values for strAttrs, see the
	 */
	static function setAttributes(fileURI:String, strAttrs:String) : Bool;
	/**
	 * Flash CS4 Professional.
	 * Converts a filename expressed as a file:/// URI to a platform-specific format.
	 * @param fileURI A string, expressed as a file:/// URI, specifying the filename you want to convert.
	 */
	static function uriToPlatformPath(fileURI:String) : String;
	/**
	 * Flash MX 2004 7.2.
	 * Writes the specified string to the specified file (as UTF-8). If the specified file does not exist, it is created.However, the folder in which you are placing the file must exist before you use this method. To create folders, useFLfile.createFolder().
	 * @param fileURI A string, expressed as a file:/// URI, specifying the file to which you want to write.
	 * @param textToWrite A string representing the text you want to place in the file.
	 * @param strAppendMode An optional string with the value "append", which specifies that you want to append textToWrite to
	 */
	static function write(fileURI:String, textToWrite:String, ?strAppendMode:String) : Bool;
}