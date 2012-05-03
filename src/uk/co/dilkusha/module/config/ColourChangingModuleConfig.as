package uk.co.dilkusha.module.config
{
	import flash.events.IEventDispatcher;
	
	import org.swiftsuspenders.Injector;
	
	import robotlegs.bender.extensions.commandMap.impl.CommandMap;
	import robotlegs.bender.extensions.eventCommandMap.impl.EventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	
	import uk.co.dilkusha.common.controller.events.ColourChangeRequestEvent;
	import uk.co.dilkusha.module.controller.BroadcastGlobalEventsLocallyCommand;
	import uk.co.dilkusha.module.view.ColourChangingRectangle;
	import uk.co.dilkusha.module.view.ColourChangingRectangleMediator;

	public class ColourChangingModuleConfig
	{

		[Inject]
		public var mediatorMap:IMediatorMap;
		
		[Inject]
		public var injector:Injector;
		
		[Inject(name="global")]
		public var globalEventDispatcher:IEventDispatcher;

		
		public function ColourChangingModuleConfig():void {
			
		}
		
		[PostConstruct]
		public function init():void {
			mediatorMap.map(ColourChangingRectangle).toMediator(ColourChangingRectangleMediator);
			
			// Set up a second command map for reacting to global events - in this case just map to a command that
			// rebroadcasts the event locally.
			var globalEventCommandMap:EventCommandMap = new EventCommandMap(injector, globalEventDispatcher, new CommandMap());
			globalEventCommandMap.map(ColourChangeRequestEvent.COLOUR_CHANGE_REQUEST, ColourChangeRequestEvent)
				.toCommand(BroadcastGlobalEventsLocallyCommand);

			
		}

	}
}