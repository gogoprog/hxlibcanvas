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
    var width(get, set):Int;
    var height(get, set):Int;

    @:native("setWidth")
    function set_width(width:Int):Int;

    @:native("setHeight")
    function set_height(height:Int):Int;

    function getContext(contextId:String):Dynamic;

    inline function getContext2d(?attribs:{}):CanvasRenderingContext2D {
        return cast getContext("2d");
    }

    @:native("Canvas::getById")
    static public function getById(id:String):CanvasElement;
}
#end
