package libcanvas;


@:buildXml('<include name="${haxelib:hxlibcanvas}/build-emscripten.xml" />')
@:include("libcanvas.h")
@:native("Canvas")
@:structAccess
extern class Canvas
{
    @:native('getContext')
    inline public function getContext(name:Const char *):Context
    @:native('setWidth')
    inline public function setWidth(value:Const int):Void
    @:native('setHeight')
    inline public function setHeight(value:Const int):Void
    @:native('glTexImage2D')
    inline public function glTexImage2D(target:Const int, level:Const int, internalFormat:Const int, format:Const int, type:Const int):Void
}

