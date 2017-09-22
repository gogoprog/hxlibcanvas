package libcanvas;


@:buildXml('<include name="${haxelib:hxlibcanvas}/build-emscripten.xml" />')
@:include("libcanvas.h")
@:native("Context")
@:structAccess
extern class Context
{
    @:native('setFillStyle')
    inline public function setFillStyle(name:Const char *):Void
    @:native('setStrokeStyle')
    inline public function setStrokeStyle(name:Const char *):Void
    @:native('setFont')
    inline public function setFont(name:Const char *):Void
    @:native('setTextAlign')
    inline public function setTextAlign(value:Const char *):Void
    @:native('setTextBaseLine')
    inline public function setTextBaseLine(value:Const char *):Void
    @:native('setDirection')
    inline public function setDirection(value:Const char *):Void
    @:native('clearRect')
    inline public function clearRect(x:Const int, y:Const int, w:Const int, h:Const int):Void
    @:native('fillRect')
    inline public function fillRect(x:Const int, y:Const int, w:Const int, h:Const int):Void
    @:native('strokeRect')
    inline public function strokeRect(x:Const int, y:Const int, w:Const int, h:Const int):Void
    @:native('fillText')
    inline public function fillText(text:Const char *, x:Const int, y:Const int, maxWidth:Const int):Void
    @:native('strokeText')
    inline public function strokeText(text:Const char *, x:Const int, y:Const int, maxWidth:Const int):Void
    @:native('measureText')
    inline public function measureText(text:Const char *):TextMetrics
    @:native('beginPath')
    inline public function beginPath():Void
    @:native('closePath')
    inline public function closePath():Void
    @:native('moveTo')
    inline public function moveTo(x:Const float, y:Const float):Void
    @:native('lineTo')
    inline public function lineTo(x:Const float, y:Const float):Void
    @:native('bezierCurveTo')
    inline public function bezierCurveTo(cp1x:Const float, cp1y:Const float, cp2x:Const float, cp2y:Const float, x:Const float, y:Const float):Void
    @:native('quadraticCurveTo')
    inline public function quadraticCurveTo(cp1x:Const float, cp1y:Const float, x:Const float, y:Const float):Void
    @:native('arc')
    inline public function arc(x:Const float, y:Const float, radius:Const float, startAngle:Const float, endAngle:Const float, anticlockwise:Const bool):Void
    @:native('arcTo')
    inline public function arcTo(x1:Const float, y1:Const float, x2:Const float, y2:Const float, radius:Const float):Void
    @:native('ellipse')
    inline public function ellipse(x:Const float, y:Const float, radiusX:Const float, radiusY:Const float, rotation:Const float, startAngle:Const float, endAngle:Const float, anticlockwise:Const bool):Void
    @:native('rect')
    inline public function rect(x:Const float, y:Const float, width:Const float, height:Const float):Void
    @:native('fill')
    inline public function fill():Void
    @:native('stroke')
    inline public function stroke():Void
    @:native('isPointInPath')
    inline public function isPointInPath(x:Const float, y:Const float):Bool
    @:native('isPointInStroke')
    inline public function isPointInStroke(x:Const float, y:Const float):Bool
    @:native('rotate')
    inline public function rotate(angle:Const float):Void
    @:native('scale')
    inline public function scale(x:Const float, y:Const float):Void
    @:native('translate')
    inline public function translate(x:Const float, y:Const float):Void
    @:native('transform')
    inline public function transform(a:Const float, b:Const float, c:Const float, d:Const float, e:Const float, f:Const float):Void
    @:native('setTransform')
    inline public function setTransform(a:Const float, b:Const float, c:Const float, d:Const float, e:Const float, f:Const float):Void
    @:native('resetTransform')
    inline public function resetTransform():Void
    @:native('setGlobalAlpha')
    inline public function setGlobalAlpha(value:Const float):Void
    @:native('setGlobalCompositeOperation')
    inline public function setGlobalCompositeOperation(value:Const char *):Void
    @:native('drawImage')
    inline public function drawImage(canvas:Canvas, x:Const float, y:Const float):Void
}

