package jsfl;

extern class ProjectItem
{
	function canPublish() : Bool;
	function canTest() : Bool;
	var displayName : String;
	var isMissing : Bool;
	var itemURI : String;
	function publish() : Bool;
	var publishProfile : String;
	function test() : Bool;
}