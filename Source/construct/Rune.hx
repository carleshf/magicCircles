package construct;

import openfl.display.Sprite;
import openfl.display.Shape;


class Rune {
    // Inspired in Cirith from J.R.R. Tolkkien (https://www.omniglot.com/conscripts/cirth.htm)
    private var _c:String;

    public function new(char:String) {
        _c = char;
    }

    private static function drawP(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawB(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawF(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawV(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawM(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawMH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawT(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawTH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawD(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawDH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawCH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawSH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawJ(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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
    
    private static function drawZH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawK(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawG(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawKH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    private static function drawGH(canvas:Sprite, x:Int, y:Int, sz:Int, fcol = 0x005588):Shape {
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

    public static function draw(canvas:Sprite, c:String, x:Int, y:Int, sz:Int, a:Float):Array<Shape> {
        var rst:Shape;
        switch c {
            case "p":  // 01
                rst = drawP(canvas, x, y, sz);
            case "b":  // 02
                rst = drawB(canvas, x, y, sz);
            case "f":  // 03
                rst = drawF(canvas, x, y, sz);
            case "v":  // 04
                rst = drawV(canvas, x, y, sz);
            case "m":  // 05
                rst = drawM(canvas, x, y, sz);
            case "mh": // 06
                rst = drawMH(canvas, x, y, sz);
            case "t":  // 07
                rst = drawT(canvas, x, y, sz);
            case "th": // 08
                rst = drawTH(canvas, x, y, sz);
            case "d":  // 09
                rst = drawD(canvas, x, y, sz);
            case "dh": // 10
                rst = drawDH(canvas, x, y, sz);
            case "ch": // 11
                rst = drawCH(canvas, x, y, sz);
            case "sh": // 12
                rst = drawSH(canvas, x, y, sz);
            case "j":  // 13
                rst = drawJ(canvas, x, y, sz);
            case "zh": // 14
                rst = drawZH(canvas, x, y, sz);
            case "k":  // 15
                rst = drawK(canvas, x, y, sz);
            case "g":  // 16
                rst = drawG(canvas, x, y, sz);
            case "kh": // 17
                rst = drawKH(canvas, x, y, sz);
            case "gh": // 18
                rst = drawGH(canvas, x, y, sz);
            case _:
                rst = new Shape();
        }

        return [rst];
    }
}