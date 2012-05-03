package uk.co.dilkusha.shell.config
{
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	
	import uk.co.dilkusha.shell.view.ColourPicker;
	import uk.co.dilkusha.shell.view.ColourPickerMediator;

	public class RL2ShellConfig
	{
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		public function RL2ShellConfig()
		{
		}
		
		[PostConstruct]
		public function init():void {
			mediatorMap.map(ColourPicker).toMediator(ColourPickerMediator);
		}
		
		
	}
}