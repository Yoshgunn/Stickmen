package  
{
	import org.flixel.*;
	/**
	 * ...
	 * @author chiz
	 */
	public class Player extends FlxSprite
	{
		
		public function Player() 
		{
			/* Shooting, jumping, running, platforms, and camera =) */ 
		}
		
		override public function update():void
		{
			
			maxVelocity.x = 80;
			maxVelocity.y = 200;
			acceleration.y = 200;
			drag.x = maxVelocity.x*4;
			
			acceleration.x = 0;
			if(FlxG.keys.LEFT)
				acceleration.x = -maxVelocity.x*4;
			if(FlxG.keys.RIGHT)
				acceleration.x = maxVelocity.x*4;
			if(FlxG.keys.justPressed("SPACE"))
				velocity.y = -maxVelocity.y/2;
			
			
			
			/* if (FlxG.keys.RIGHT)
			{
				this.x++;
			}
			
			if(FlxG.keys.LEFT)
			{
				this.x--;
			}	
			
			if (FlxG.keys.DOWN)
			{
				this.y++; 
			}	
			
			if (FlxG.keys.UP)
			{
				this.y--; 
			}
			*/
		}
		
	}

}