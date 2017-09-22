package libcanvas;

#if js
typedef CanvasElement = js.html.CanvasElement;
#elseif (cpp && emscripten)
@:buildXml('<include name="${haxelib:hxlibcanvas}/build-emscripten.xml" />')
@:include("libcanvas.h")
@:native("Canvas")
@:structAccess
typedef CanvasElement = Canvas;
#end
