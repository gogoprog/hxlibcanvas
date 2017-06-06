package libcanvas;

#if js
@:forward
abstract Canvas(js.html.CanvasElement) from js.html.CanvasElement to js.html.CanvasElement
{
    public function new(?id:String)
    {
        if(id == null)
        {
            this = js.Browser.document.createCanvasElement();
        }
        else
        {
            this = cast js.Browser.document.getElementById(id);
        }
    }

    static public function getById(?id:String)
    {
        return new Canvas(id);
    }
}
#end

#if (cpp && emscripten)
@:buildXml('<include name="${haxelib:hxlibcanvas}/build-emscripten.xml" />')
@:include("libcanvas.h")
@:native("Canvas")
@:structAccess
extern class Canvas
{
    @:native("Canvas::getById")
    static public function getById(id:String):Canvas;

    public var width(null, set):Float;

    @:native("setWidth")
    public function set_width(width:Float):Float;
}
#end