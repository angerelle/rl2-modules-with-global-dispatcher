package uk.co.dilkusha.shell.config
{
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	
	import uk.co.dilkusha.common.controller.events.ColourChangeRequestEvent;
	import uk.co.dilkusha.shell.controller.BroadcastLocalEventsGloballyCommand;
	import uk.co.dilkusha.shell.view.ColourPicker;
	import uk.co.dilkusha.shell.view.ColourPickerMediator;

	public class RL2ShellConfig
	{
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		[Inject]
		public var commandMap:IEventCommandMap;
		
		public function RL2ShellConfig()
		{
		}
		
		[PostConstruct]
		public function init():void {
			mediatorMap.map(ColourPicker).toMediator(ColourPickerMediator);
			
			commandMap.map(ColourChangeRequestEvent.COLOUR_CHANGE_REQUEST, ColourChangeRequestEvent)
				.toCommand(BroadcastLocalEventsGloballyCommand);
			
			
		}
		
		
	}
}