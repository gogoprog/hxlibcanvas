import libcanvas.Canvas;

class Test
{
    static public function main()
    {
        var canvas = new Canvas("myCanvas");

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
