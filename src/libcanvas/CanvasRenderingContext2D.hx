package libcanvas;

#if js

typedef CanvasRenderingContext2D = js.html.CanvasRenderingContext2D;

#elseif (cpp && emscripten)

typedef Style = haxe.extern.EitherType<String,haxe.extern.EitherType<CanvasGradient,CanvasPattern>>;

extern class CanvasWindingRule
{

}

extern class TextMetrics
{

}

extern class CanvasGradient
{

}

extern class CanvasPattern
{

}

extern class ImageElement
{

}

extern class VideoElement
{

}

extern class ImageBitmap
{

}

extern class Path2D
{

}

extern class HitRegionOptions
{

}

extern class ImageData
{

}

@:native("Context")
@:structAccess
extern class CanvasRenderingContext2D
{
    var canvas(default,null):CanvasElement;
    var globalAlpha(get, set):Float;
    var globalCompositeOperation(get, set):String;
    var strokeStyle(get, set):Style;
    var fillStyle(get, set):Style;
    @:native("setFillStyle")
    function set_fillStyle(fillStyle:Style):Style;
    var shadowOffsetX(get, set):Float;
    var shadowOffsetY(get, set):Float;
    var shadowBlur(get, set):Float;
    var shadowColor(get, set):String;
    var filter(get, set):String;
    var imageSmoothingEnabled(get, set):Bool;
    var lineWidth(get, set):Float;
    var lineCap(get, set):String;
    var lineJoin(get, set):String;
    var miterLimit(get, set):Float;
    var lineDashOffset(get, set):Float;
    var font(get, set):String;
    var textAlign(get, set):String;
    var textBaseline(get, set):String;



    function save():Void;
    function restore():Void;
    function scale(x:Float, y:Float ):Void;
    function rotate(angle:Float ):Void;
    function translate(x:Float, y:Float ):Void;
    function transform(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float ):Void;
    function setTransform(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float ):Void;
    function resetTransform():Void;
    function createLinearGradient(x0:Float, y0:Float, x1:Float, y1:Float ):CanvasGradient;
    function createRadialGradient(x0:Float, y0:Float, r0:Float, x1:Float, y1:Float, r1:Float ):CanvasGradient;
    function createPattern(image:haxe.extern.EitherType<ImageElement,haxe.extern.EitherType<CanvasElement,haxe.extern.EitherType<VideoElement,ImageBitmap>>>, repetition:String ):CanvasPattern;
    function clearRect(x:Float, y:Float, w:Float, h:Float ):Void;
    function fillRect(x:Float, y:Float, w:Float, h:Float ):Void;
    function strokeRect(x:Float, y:Float, w:Float, h:Float ):Void;
    function beginPath():Void;
    @:overload(function(?winding:CanvasWindingRule = "nonzero" ):Void {} )
    function fill(path:Path2D, ?winding:CanvasWindingRule = "nonzero" ):Void;
    @:overload(function():Void {} )
    function stroke(path:Path2D ):Void;
    // function drawFocusIfNeeded(element:Element ):Void;
    // function drawCustomFocusRing(element:Element ):Bool;
    @:overload(function(?winding:CanvasWindingRule = "nonzero" ):Void {} )
    function clip(path:Path2D, ?winding:CanvasWindingRule = "nonzero" ):Void;
    @:overload(function(x:Float, y:Float, ?winding:CanvasWindingRule = "nonzero" ):Bool {} )
    function isPointInPath(path:Path2D, x:Float, y:Float, ?winding:CanvasWindingRule = "nonzero" ):Bool;
    @:overload(function(x:Float, y:Float ):Bool {} )
    function isPointInStroke(path:Path2D, x:Float, y:Float ):Bool;
    function fillText(text:String, x:Float, y:Float, ?maxWidth:Float ):Void;
    function strokeText(text:String, x:Float, y:Float, ?maxWidth:Float ):Void;
    function measureText(text:String ):TextMetrics;
    @:overload(function(image:haxe.extern.EitherType<ImageElement,haxe.extern.EitherType<CanvasElement,haxe.extern.EitherType<VideoElement,ImageBitmap>>>, dx:Float, dy:Float ):Void {} )
    @:overload(function(image:haxe.extern.EitherType<ImageElement,haxe.extern.EitherType<CanvasElement,haxe.extern.EitherType<VideoElement,ImageBitmap>>>, dx:Float, dy:Float, dw:Float, dh:Float ):Void {} )
    function drawImage(image:haxe.extern.EitherType<ImageElement,haxe.extern.EitherType<CanvasElement,haxe.extern.EitherType<VideoElement,ImageBitmap>>>, sx:Float, sy:Float, sw:Float, sh:Float, dx:Float, dy:Float, dw:Float, dh:Float ):Void;
    function addHitRegion(?options:HitRegionOptions ):Void;
    function removeHitRegion(id:String ):Void;
    function clearHitRegions():Void;
    @:overload(function(sw:Float, sh:Float ):ImageData {} )
    function createImageData(imagedata:ImageData ):ImageData;
    function getImageData(sx:Float, sy:Float, sw:Float, sh:Float ):ImageData;
    @:overload(function(imagedata:ImageData, dx:Float, dy:Float ):Void {} )
    function putImageData(imagedata:ImageData, dx:Float, dy:Float, dirtyX:Float, dirtyY:Float, dirtyWidth:Float, dirtyHeight:Float ):Void;
    function setLineDash(segments:Array<Float> ):Void;
    function getLineDash():Array<Float>;
    function closePath():Void;
    function moveTo(x:Float, y:Float ):Void;
    function lineTo(x:Float, y:Float ):Void;
    function quadraticCurveTo(cpx:Float, cpy:Float, x:Float, y:Float ):Void;
    function bezierCurveTo(cp1x:Float, cp1y:Float, cp2x:Float, cp2y:Float, x:Float, y:Float ):Void;
    function arcTo(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float ):Void;
    function rect(x:Float, y:Float, w:Float, h:Float ):Void;
    function arc(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, ?anticlockwise:Bool = false ):Void;
    function ellipse(x:Float, y:Float, radiusX:Float, radiusY:Float, rotation:Float, startAngle:Float, endAngle:Float, ?anticlockwise:Bool = false ):Void;
}
#end
