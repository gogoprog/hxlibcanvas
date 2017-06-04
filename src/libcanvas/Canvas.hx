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
}
#end