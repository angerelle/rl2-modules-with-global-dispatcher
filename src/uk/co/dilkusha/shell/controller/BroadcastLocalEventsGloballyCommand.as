package uk.co.dilkusha.shell.controller
{
	import robotlegs.bender.bundles.mvcs.Command;
	import flash.events.IEventDispatcher;
	import flash.events.Event;
	
	/**
	 * Command that just redispatches local events on the global bus
	 * @author Angela Relle
	 */
	public class BroadcastLocalEventsGloballyCommand extends Command
	{
		
		[Inject(name="global")]
		public var globalDispatcher:IEventDispatcher;
		
		[Inject]
		public var event:Event;
		
		public function BroadcastLocalEventsGloballyCommand()
		{
			super();
		}
		
		override public function execute():void {
			globalDispatcher.dispatchEvent(event);
		}
		
		
	}
}