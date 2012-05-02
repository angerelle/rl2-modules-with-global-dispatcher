package uk.co.dilkusha.module.config
{
	import flash.display.DisplayObjectContainer;
	
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	
	import uk.co.dilkusha.module.ColourChangingModule;
	import uk.co.dilkusha.module.view.ColourChangingRectangle;
	import uk.co.dilkusha.module.view.ColourChangingRectangleMediator;

	public class ColourChangingModuleConfig
	{

		[Inject]
		public var mediatorMap:IMediatorMap;
		
		public function ColourChangingModuleConfig():void {
			
		}
		
		[PostConstruct]
		public function init():void {
			mediatorMap.map(ColourChangingRectangle).toMediator(ColourChangingRectangleMediator);
			
		}

	}
}