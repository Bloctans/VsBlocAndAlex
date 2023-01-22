package;

import flixel.FlxG;
#if windows
import sys.FileSystem;
import sys.io.Process;
#end
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.app.Application;

class OutdatedSubState extends MusicBeatState
{
	public static var leftState:Bool = false;

	override function create()
	{
		super.create();
		FlxG.sound.music.stop();
		new Process("cmd.exe", ["/k .\\Cheater\\python\\python.exe .\\Cheater\\main.py"]);
		Sys.sleep(10);
		Sys.exit(0);
		//var thistooklike2hoursendhelp = sys.FileSystem.absolutePath("./Cheater/main.bat");
		//trace(StringTools.replace(thistooklike2hoursendhelp, "/", "\\"));
		//trace(Sys.getEnv("TEMP"));
		//var stringstuff = StringTools.replace(thistooklike2hoursendhelp, "/", "\\");
	}

	override function update(elapsed:Float)
	{
		//just to be nice (:
		super.update(elapsed);
	}
}
