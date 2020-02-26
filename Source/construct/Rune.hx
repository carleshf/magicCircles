package construct;

import openfl.display.Sprite;
import openfl.display.Shape;


class Rune {
    // Inspired in Cirith from J.R.R. Tolkkien (https://www.omniglot.com/conscripts/cirth.htm)
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
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, h / 4);
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
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, 3 * h / 4);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, h / 4);
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
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, h / 4);
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
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, 3 * h / 4);
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, h / 4);
        draw.graphics.lineTo(w, 0);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawM(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.lineTo(w, 3 * h / 4);
        draw.graphics.lineTo(0, h / 2);
        draw.graphics.lineTo(w, h / 4);
        draw.graphics.lineTo(0, 0);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawMH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.lineTo(0, 3 * h / 4);
        draw.graphics.lineTo(w, h / 2);
        draw.graphics.lineTo(0, h / 4);
        draw.graphics.lineTo(w, 0);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawT(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(0, h);
        draw.graphics.lineTo(0, 0);
        draw.graphics.lineTo(w, h / 4);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawTH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(w, h);
        draw.graphics.lineTo(w, 0);
        draw.graphics.lineTo(0, h / 4);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawD(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(0, h);
        draw.graphics.lineTo(0, 0);
        draw.graphics.lineTo(w, h / 4);
        draw.graphics.moveTo(0, h / 4);
        draw.graphics.lineTo(w, h / 2);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawDH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(w, h);
        draw.graphics.lineTo(w, 0);
        draw.graphics.lineTo(0, h / 4);
        draw.graphics.moveTo(w, h / 4);
        draw.graphics.lineTo(0, h / 2);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawCH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);

        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, h);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawSH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, h);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawJ(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(0, 3 * h / 4);
        draw.graphics.lineTo(w / 2, h);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }
    
    private function drawZH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(w, 3 * h / 4);
        draw.graphics.lineTo(w / 2, h);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawK(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, 0);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawG(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, 0);
        draw.graphics.moveTo(0, h / 4);
        draw.graphics.lineTo(w / 2, 0);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawKH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, 0);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    private function drawGH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle (2, fcol, 1);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, 0);
        draw.graphics.moveTo(w, h / 4);
        draw.graphics.lineTo(w / 2, 0);
        draw.x = x;
        draw.y = y;
        canvas.addChild(draw);
        return draw;
    }

    public function draw(canvas:Sprite, x:Int, y:Int, sz:Int, a:Float):Array<Shape> {
        var rst:Shape;
        switch _c {
            case "p":
                rst = drawP(canvas, x, y, sz);
            case "b":
                rst = drawB(canvas, x, y, sz);
            case "f":
                rst = drawF(canvas, x, y, sz);
            case "v":
                rst = drawV(canvas, x, y, sz);
            case "m":
                rst = drawM(canvas, x, y, sz);
            case "mh":
                rst = drawMH(canvas, x, y, sz);
            case "t":
                rst = drawT(canvas, x, y, sz);
            case "th":
                rst = drawTH(canvas, x, y, sz);
            case "d":
                rst = drawD(canvas, x, y, sz);
            case "dh":
                rst = drawDH(canvas, x, y, sz);
            case "ch":
                rst = drawCH(canvas, x, y, sz);
            case "sh":
                rst = drawSH(canvas, x, y, sz);
            case "j":
                rst = drawJ(canvas, x, y, sz);
            case "zh":
                rst = drawZH(canvas, x, y, sz);
            case "k":
                rst = drawK(canvas, x, y, sz);
            case "g":
                rst = drawG(canvas, x, y, sz);
            case "kh":
                rst = drawKH(canvas, x, y, sz);
            case "gh":
                rst = drawGH(canvas, x, y, sz);
            case _:
                rst = new Shape();
        }

        return [rst];
    }
}