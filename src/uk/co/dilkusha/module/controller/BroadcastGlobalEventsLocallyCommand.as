package uk.co.dilkusha.module.controller
{
	import flash.events.Event;
	import flash.events.IEventDispatcher;
	
	import robotlegs.bender.bundles.mvcs.Command;
	
	/**
	 * Command that rebroadcasts global events on the local bus
	 * @author Angela Relle
	 */
	public class BroadcastGlobalEventsLocallyCommand extends Command
	{
		[Inject]
		public var event:Event;
		
		[Inject]
		public var eventDispatcher:IEventDispatcher;
		

		public function BroadcastGlobalEventsLocallyCommand()
		{
			super();
		}
		
		override public function execute():void {
			eventDispatcher.dispatchEvent(event);
		}
	}
}