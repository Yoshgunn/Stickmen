package
{
    import org.flixel.*;
 
    public class MenuState extends FlxState
    {
        private var startButton:FlxButton;
		private var optionsButton:FlxButton; 
 
        public function MenuState()
        {
        }
 
        override public function create():void
        {
            FlxG.mouse.show();
            startButton = new FlxButton(120, 90, "Start Game", startGame);
			optionsButton = new FlxButton(240, 180, "Options", options);
            add(startButton);
			add(optionsButton);
        }
 
        private function startGame():void
        {
            FlxG.mouse.hide();
            FlxG.switchState(new PlayState);
        }
		
		private function options():void
        {
            FlxG.mouse.hide();
            FlxG.switchState(new PlayState);
        }
    }
}