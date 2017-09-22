package libcanvas;


@:buildXml('<include name="${haxelib:hxlibcanvas}/build-emscripten.xml" />')
@:include("libcanvas.h")
@:native("Canvas")
@:structAccess
extern class Canvas
{
    @:native('getContext')
    inline public function getContext(name:String):Context;

    @:native('setWidth')
    inline public function setWidth(value:Int):Void;

    @:native('setHeight')
    inline public function setHeight(value:Int):Void;

    @:native('glTexImage2D')
    inline public function glTexImage2D(target:Int, level:Int, internalFormat:Int, format:Int, type:Int):Void;

}

