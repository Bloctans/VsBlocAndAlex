package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class OtherState extends MusicBeatState
{

	public static var leftState:Bool = false;

	override function create()
	{
		super.create();
		var text1:Alphabet = new Alphabet(0, (FlxG.height / 2), 'Coming Soon...', true, false);
		var text2:Alphabet = new Alphabet(0, (FlxG.height / 2) - 100, 'Press backspace to exit!', true, false);
		var menuBG:FlxSprite = new FlxSprite().loadGraphic(Paths.image("menuDesat"));

		menuBG.color = 0xFFea71fd;
		menuBG.setGraphicSize(Std.int(menuBG.width * 1.1));
		menuBG.updateHitbox();
		menuBG.screenCenter();
		menuBG.antialiasing = FlxG.save.data.antialiasing;

		add(menuBG);
		add(text1);
		add(text2);
	}

	override function update(elapsed:Float)
	{
		if (controls.BACK)
			{
				if (FlxG.sound.music != null)
					FlxG.sound.music.stop();
				FlxG.sound.playMusic(Paths.music('freakymenu'));
				FlxG.switchState(new MainMenuState());
				clean();
			}
		//just to be nice (:
		super.update(elapsed);
	}
}
