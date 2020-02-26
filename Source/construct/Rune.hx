package construct;

import openfl.display.Sprite;
import openfl.display.Shape;


class Rune {
    private var _c:String;

    public function new(char:String) {
        _c = char;
    }

    private function drawP(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);

        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(0, h/2);
        draw.graphics.lineTo(w, h/4);
        draw.graphics.lineTo(0, 0);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawB(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);

        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(0, h/2);
        draw.graphics.lineTo(w, 3 * h / 4);
        draw.graphics.moveTo(0, h/2);
        draw.graphics.lineTo(w, h/4);
        draw.graphics.lineTo(0, 0);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;

    }

    private function drawF(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);

        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w, h/2);
        draw.graphics.lineTo(0, h/4);
        draw.graphics.lineTo(w, 0);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawV(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);

        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w, h/2);
        draw.graphics.lineTo(0, 3 * h / 4);
        draw.graphics.moveTo(w, h/2);
        draw.graphics.lineTo(0, h/4);
        draw.graphics.lineTo(w, 0);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    public function draw(canvas:Sprite, x:Int, y:Int, sz:Int, a:Float):Array<Shape> {
        var rst:Shape;
        switch _c {
            case 'p':
                rst = drawP(canvas, x, y, sz);
            case 'b':
                rst = drawB(canvas, x, y, sz);
            case 'f':
                rst = drawF(canvas, x, y, sz);
            case 'v':
                rst = drawV(canvas, x, y, sz);
            case _:
                rst = new Shape();
        }

        return [rst];
    }
}