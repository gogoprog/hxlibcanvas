package libcanvas;

#if js
typedef CanvasElement = js.html.CanvasElement;
#elseif (cpp && emscripten)
@:buildXml('<include name="${haxelib:hxlibcanvas}/build-emscripten.xml" />')
@:include("libcanvas.h")
@:native("Canvas")
@:structAccess
extern class CanvasElement
{
    @:native("Canvas::getById")
    static public function getById(id:String):CanvasElement;

    public var width(null, set):Float;

    @:native("setWidth")
    public function set_width(width:Float):Float;
}
#end
