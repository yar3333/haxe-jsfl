package jsfl;

extern class Project
{
	function addFile(fileURI:String, ?autoCreateFolder:Bool) : ProjectItem;
	function canPublishProject() : Bool;
	function canTestProject() : Bool;
	var defaultItem : ProjectItem;
	function findProjectItem(fileURI:String) : ProjectItem;
	var items : Array<ProjectItem>;
	var name : String;
	var projectURI : String;
	function publishProject() : Bool;
	function testProject() : Bool;
}