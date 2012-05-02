package uk.co.dilkusha.module.view
{
	import mx.graphics.SolidColor;
	import mx.graphics.SolidColorStroke;
	
	import spark.primitives.Graphic;
	import spark.primitives.Rect;
	
	public class ColourChangingRectangle extends Graphic
	{
		
		private var _fillColour:uint;
		private var _fillColourChanged:Boolean;
		
		
		public function get fillColour():uint
		{
			return _fillColour;
		}
		
		public function set fillColour(value:uint):void
		{
			_fillColour = value;
			_fillColourChanged = true;
			invalidateProperties();
		}
		
		
		
		private var _rectangle:Rect;
		
		public function ColourChangingRectangle()
		{
			super();
		}
		
		
		override protected function createChildren():void {
			super.createChildren();
			_rectangle = new Rect();
			_rectangle.height = 200;
			_rectangle.width = 200;
			var stroke:SolidColorStroke = new SolidColorStroke();
			_rectangle.stroke = stroke;
			addElement(_rectangle);
		}
		
		override protected function commitProperties():void {
			super.commitProperties();
			if (_fillColourChanged) {
				var solidColour:SolidColor = new SolidColor(_fillColour);
				_rectangle.fill = solidColour;
				_fillColourChanged = false;
			}
		}
	}

}