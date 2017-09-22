package libcanvas;

class Lib
{
    static public function getCanvasElement(id:String):CanvasElement
    {
#if js
        return cast js.Browser.document.getElementById(id);
#elseif (cpp && emscripten)
        return CanvasElement.getById(id);
#end
    }
}

