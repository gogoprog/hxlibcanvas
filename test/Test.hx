class Test
{
    static public function main()
    {
        trace("hxlibcanvas");

        var canvas = libcanvas.Lib.getCanvasElement("myCanvas");

        canvas.width = 512;
        canvas.height = 512;

        var context = canvas.getContext2d();

        context.beginPath();
        context.rect(20, 20, 150, 100);
        context.fillStyle = "red";
        context.fill();

        context.beginPath();
        context.rect(40, 40, 150, 100);
        context.fillStyle = "blue";
        context.fill();
    }
}
