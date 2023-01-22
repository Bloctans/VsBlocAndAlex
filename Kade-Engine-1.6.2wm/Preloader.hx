package ;
 
import flixel.system.FlxAssets;
import flixel.system.FlxBasePreloader;
import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.BlendMode;
import flash.display.Sprite;
import flash.Lib;
import flash.text.TextField;
import flash.text.TextFormat;
import flixel.FlxG;

@:bitmap("vs.png") class LogoImage extends BitmapData { }

class Preloader extends FlxBasePreloader
{
	var _buffer:Sprite;
	var _bmpBar:Bitmap;
	var _text:TextField;
	var _logo:Sprite;
	var _logoGlow:Sprite;

	override public function new(MinDisplayTime:Float = 0, ?AllowedURLs:Array<String>):Void
	{
		super(MinDisplayTime, AllowedURLs);
	}

	/**
	 * This class is called as soon as the FlxPreloaderBase has finished initializing.
	 * Override it to draw all your graphics and things - make sure you also override update
	 * Make sure you call super.create()
	 */
	override function create():Void
	{
        _buffer = new Sprite();
		_buffer.scaleX = _buffer.scaleY = 2;
		addChild(_buffer);
		_width = Std.int(Lib.current.stage.stageWidth / _buffer.scaleX);
		_height = Std.int(Lib.current.stage.stageHeight / _buffer.scaleY);

        var _logo = createBitmap(LogoImage, function(_logo)
            {
                _logo.width = _width;
                _logo.height = _height;
            });
           _logo.smoothing = true;
		_buffer.addChild(_logo);

		//_buffer.addChild(new Bitmap(new BitmapData(_width, _height, false, 0x00345e)));

		_bmpBar = new Bitmap(new BitmapData(1, 7, false, 0x00ff00));
		_bmpBar.x = 4;
		_bmpBar.y = _height - 11;
		_buffer.addChild(_bmpBar);

		_text = new TextField();
		_text.defaultTextFormat = new TextFormat(FlxAssets.FONT_DEFAULT, 8, 0xffffff);
		_text.embedFonts = true;
		_text.selectable = false;
		_text.multiline = false;
		_text.x = 2;
		_text.y = _bmpBar.y - 11;
		_text.width = 400;
		_buffer.addChild(_text);

		super.create();
	}

	/**
	 * Cleanup your objects!
	 * Make sure you call super.destroy()!
	 */
	override function destroy():Void
	{
		if (_buffer != null)
		{
			removeChild(_buffer);
		}
		_buffer = null;
		_bmpBar = null;
		_text = null;
		_logo = null;
		_logoGlow = null;
		super.destroy();
	}

	override public function update(Percent:Float):Void
	{
		_bmpBar.scaleX = Percent * (_width - 8);
		_text.text = Std.string("KADE CUSTOM BULID, CUSTOM PRELOADER TOO ;D");

		/*if (Percent < 0.1)
		{
			_logoGlow.alpha = 0;
			_logo.alpha = 0;
		}
		else if (Percent < 0.15)
		{
			_logoGlow.alpha = Math.random();
			_logo.alpha = 0;
		}
		else if (Percent < 0.2)
		{
			_logoGlow.alpha = 0;
			_logo.alpha = 0;
		}
		else if (Percent < 0.25)
		{
			_logoGlow.alpha = 0;
			_logo.alpha = Math.random();
		}
		else if (Percent < 0.7)
		{
			_logoGlow.alpha = (Percent - 0.45) / 0.45;
			_logo.alpha = 1;
		}
		else if ((Percent > 0.8) && (Percent < 0.9))
		{
			_logoGlow.alpha = 1 - (Percent - 0.8) / 0.1;
			_logo.alpha = 0;
		}
		else if (Percent > 0.9)
		{
			_buffer.alpha = 1 - (Percent - 0.9) / 0.1;
		}*/
	}
}
