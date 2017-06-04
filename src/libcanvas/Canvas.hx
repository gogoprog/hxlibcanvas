package libcanvas;

#if js
typedef js.html.CanvasRenderingContext2D Context;
#end

#if js
class Canvas
{
    public function new(?id)
    {
        if(id == null)
        {

        }
    }

    inline public function getContext2d():Context
    {
        
    }
}
#end