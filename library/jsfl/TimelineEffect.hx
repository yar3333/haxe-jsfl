package jsfl;

class TimelineEffect
{
	function configureEffect() : Void {}
	function executeEffect() : Void {}
	function removeEffect() : Void {}
	function attachEffect() : Void untyped
	{
		configureEffect=$closure(this, this.configureEffect);
		executeEffect=$closure(this, this.executeEffect);
		removeEffect=$closure(this, this.removeEffect);
	}
}