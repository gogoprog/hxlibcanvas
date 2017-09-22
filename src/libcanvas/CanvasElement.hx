package libcanvas;

#if js
typedef CanvasElement = js.html.CanvasElement;
#elseif (cpp && emscripten)
@:buildXml('<include name="${haxelib:hxlibcanvas}/build-emscripten.xml" />')
@:include("libcanvas.h")
@:native("Canvas")
@:structAccess
@:forward
abstract CanvasElement(Canvas) from Canvas to Canvas
{
    static public function getById(?id:String)
    {
        return new Canvas(id);
    }
}
#end
