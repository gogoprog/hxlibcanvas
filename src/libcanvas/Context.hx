package libcanvas;


@:buildXml('<include name="${haxelib:hxlibcanvas}/build-emscripten.xml" />')
@:include("libcanvas.h")
@:native("Context")
@:structAccess
extern class Context
{
    @:native('setFillStyle')
    inline public function setFillStyle(name:String):Void;

    @:native('setStrokeStyle')
    inline public function setStrokeStyle(name:String):Void;

    @:native('setFont')
    inline public function setFont(name:String):Void;

    @:native('setTextAlign')
    inline public function setTextAlign(value:String):Void;

    @:native('setTextBaseLine')
    inline public function setTextBaseLine(value:String):Void;

    @:native('setDirection')
    inline public function setDirection(value:String):Void;

    @:native('clearRect')
    inline public function clearRect(x:Int, y:Int, w:Int, h:Int):Void;

    @:native('fillRect')
    inline public function fillRect(x:Int, y:Int, w:Int, h:Int):Void;

    @:native('strokeRect')
    inline public function strokeRect(x:Int, y:Int, w:Int, h:Int):Void;

    @:native('fillText')
    inline public function fillText(text:String, x:Int, y:Int, maxWidth:Int):Void;

    @:native('strokeText')
    inline public function strokeText(text:String, x:Int, y:Int, maxWidth:Int):Void;

    @:native('measureText')
    inline public function measureText(text:String):TextMetrics;

    @:native('beginPath')
    inline public function beginPath():Void;

    @:native('closePath')
    inline public function closePath():Void;

    @:native('moveTo')
    inline public function moveTo(x:Float, y:Float):Void;

    @:native('lineTo')
    inline public function lineTo(x:Float, y:Float):Void;

    @:native('bezierCurveTo')
    inline public function bezierCurveTo(cp1x:Float, cp1y:Float, cp2x:Float, cp2y:Float, x:Float, y:Float):Void;

    @:native('quadraticCurveTo')
    inline public function quadraticCurveTo(cp1x:Float, cp1y:Float, x:Float, y:Float):Void;

    @:native('arc')
    inline public function arc(x:Float, y:Float, radius:Float, startAngle:Float, endAngle:Float, anticlockwise:Bool):Void;

    @:native('arcTo')
    inline public function arcTo(x1:Float, y1:Float, x2:Float, y2:Float, radius:Float):Void;

    @:native('ellipse')
    inline public function ellipse(x:Float, y:Float, radiusX:Float, radiusY:Float, rotation:Float, startAngle:Float, endAngle:Float, anticlockwise:Bool):Void;

    @:native('rect')
    inline public function rect(x:Float, y:Float, width:Float, height:Float):Void;

    @:native('fill')
    inline public function fill():Void;

    @:native('stroke')
    inline public function stroke():Void;

    @:native('isPointInPath')
    inline public function isPointInPath(x:Float, y:Float):Bool;

    @:native('isPointInStroke')
    inline public function isPointInStroke(x:Float, y:Float):Bool;

    @:native('rotate')
    inline public function rotate(angle:Float):Void;

    @:native('scale')
    inline public function scale(x:Float, y:Float):Void;

    @:native('translate')
    inline public function translate(x:Float, y:Float):Void;

    @:native('transform')
    inline public function transform(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Void;

    @:native('setTransform')
    inline public function setTransform(a:Float, b:Float, c:Float, d:Float, e:Float, f:Float):Void;

    @:native('resetTransform')
    inline public function resetTransform():Void;

    @:native('setGlobalAlpha')
    inline public function setGlobalAlpha(value:Float):Void;

    @:native('setGlobalCompositeOperation')
    inline public function setGlobalCompositeOperation(value:String):Void;

    @:native('drawImage')
    inline public function drawImage(canvas:Canvas, x:Float, y:Float):Void;

}

