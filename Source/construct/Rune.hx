package construct;

import openfl.display.Sprite;
import openfl.display.Shape;


class Rune {
    // Inspired in Cirith from J.R.R. Tolkkien (https://www.omniglot.com/conscripts/cirth.htm)
    private var _c:String;

    public function new(char:String) {
        _c = char;
    }

    private static function drawP(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, h / 4);
        draw.graphics.lineTo(0, 0);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawB(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, 3 * h / 4);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, h / 4);
        draw.graphics.lineTo(0, 0);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;

    }

    private static function drawF(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, h / 4);
        draw.graphics.lineTo(w, 0);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawV(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, 3 * h / 4);
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, h / 4);
        draw.graphics.lineTo(w, 0);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawM(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.lineTo(w, 3 * h / 4);
        draw.graphics.lineTo(0, h / 2);
        draw.graphics.lineTo(w, h / 4);
        draw.graphics.lineTo(0, 0);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawMH(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.lineTo(0, 3 * h / 4);
        draw.graphics.lineTo(w, h / 2);
        draw.graphics.lineTo(0, h / 4);
        draw.graphics.lineTo(w, 0);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawT(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(0, h);
        draw.graphics.lineTo(0, 0);
        draw.graphics.lineTo(w, h / 4);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawTH(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(w, h);
        draw.graphics.lineTo(w, 0);
        draw.graphics.lineTo(0, h / 4);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawD(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(0, h);
        draw.graphics.lineTo(0, 0);
        draw.graphics.lineTo(w, h / 4);
        draw.graphics.moveTo(0, h / 4);
        draw.graphics.lineTo(w, h / 2);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawDH(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(w, h);
        draw.graphics.lineTo(w, 0);
        draw.graphics.lineTo(0, h / 4);
        draw.graphics.moveTo(w, h / 4);
        draw.graphics.lineTo(0, h / 2);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawCH(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, h);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawSH(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, h);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawJ(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(0, 3 * h / 4);
        draw.graphics.lineTo(w / 2, h);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }
    
    private static function drawZH(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(w, 3 * h / 4);
        draw.graphics.lineTo(w / 2, h);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawK(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, 0);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawG(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, 0);
        draw.graphics.moveTo(0, h / 4);
        draw.graphics.lineTo(w / 2, 0);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawKH(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, 0);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawGH(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w, h / 2);
        draw.graphics.lineTo(0, 0);
        draw.graphics.moveTo(w, h / 4);
        draw.graphics.lineTo(w / 2, 0);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawL(canvas:Sprite, x:Float, y:Float,  a:Float,sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(w / 2, 0);
        draw.graphics.lineTo(w / 2, h);
        draw.graphics.moveTo(0, h / 4);
        draw.graphics.lineTo(w, 3 * h / 4);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawLH(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(w / 2, 0);
        draw.graphics.lineTo(w / 2, h);
        draw.graphics.moveTo(0, 3 * h / 4);
        draw.graphics.lineTo(w, h / 4);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawND(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(w / 2, 0);
        draw.graphics.lineTo(w / 2, h);
        draw.graphics.moveTo(0, h / 4);
        draw.graphics.lineTo(w, 3 * h / 4);
        draw.graphics.moveTo(0, 3 * h / 4);
        draw.graphics.lineTo(w, h / 4);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawE(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(0, h / 5);
        draw.graphics.lineTo(w, h / 2);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawEA(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(w, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(0, h / 5);
        draw.graphics.lineTo(w, h / 2);
        draw.graphics.moveTo(0, h / 2);
        draw.graphics.lineTo(w, 4 * h / 5);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawA(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(w, h / 6);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(w, h / 6);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawAA(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.lineTo(0, h);
        draw.graphics.moveTo(w, h / 6);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(0, 0);
        draw.graphics.lineTo(w, h / 6);
        draw.graphics.moveTo(0, h / 6);
        draw.graphics.lineTo(w, h / 3);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }

    private static function drawOD(canvas:Sprite, x:Float, y:Float, a:Float, sz:Int, fcol:Int = 0x005588, fstr:Int = 1):Shape {
        var w = sz / 2;
        var h = sz;
        var draw = new Shape();
        draw.graphics.lineStyle(fstr, fcol, 1);
        draw.graphics.moveTo(0, h);
        draw.graphics.lineTo(w / 2, 0);
        draw.graphics.lineTo(w, h);
        draw.graphics.moveTo(w / 2, 0);
        draw.graphics.lineTo(w / 2, h);
        draw.x = x;
        draw.y = y;
        draw.rotation = a;
        canvas.addChild(draw);
        return draw;
    }
    
    public static function draw(canvas:Sprite, c:String, x:Float, y:Float, sz:Int, a:Float, fcol:Int = 0x005588, fstr:Int = 1):Array<Shape> {
        x = x - sz / 4;
        y = y - sz / 2;
        var rst:Shape;
        switch c {
            case "p":  // 01
                rst = drawP(canvas, x, y, a, sz, fcol, fstr);
            case "b":  // 02
                rst = drawB(canvas, x, y, a, sz, fcol, fstr);
            case "f":  // 03
                rst = drawF(canvas, x, y, a, sz, fcol, fstr);
            case "v":  // 04
                rst = drawV(canvas, x, y, a, sz, fcol, fstr);
            case "m":  // 05
                rst = drawM(canvas, x, y, a, sz, fcol, fstr);
            case "mh": // 06
                rst = drawMH(canvas, x, y, a, sz, fcol, fstr);
            case "t":  // 07
                rst = drawT(canvas, x, y, a, sz, fcol, fstr);
            case "th": // 08
                rst = drawTH(canvas, x, y, a, sz, fcol, fstr);
            case "d":  // 09
                rst = drawD(canvas, x, y, a, sz, fcol, fstr);
            case "dh": // 10
                rst = drawDH(canvas, x, y, a, sz, fcol, fstr);
            case "ch": // 11
                rst = drawCH(canvas, x, y, a, sz, fcol, fstr);
            case "sh": // 12
                rst = drawSH(canvas, x, y, a, sz, fcol, fstr);
            case "j":  // 13
                rst = drawJ(canvas, x, y, a, sz, fcol, fstr);
            case "zh": // 14
                rst = drawZH(canvas, x, y, a, sz, fcol, fstr);
            case "k":  // 15
                rst = drawK(canvas, x, y, a, sz, fcol, fstr);
            case "g":  // 16
                rst = drawG(canvas, x, y, a, sz, fcol, fstr);
            case "kh": // 17
                rst = drawKH(canvas, x, y, a, sz, fcol, fstr);
            case "gh": // 18
                rst = drawGH(canvas, x, y, a, sz, fcol, fstr);
            case "l":  // 19
                rst = drawL(canvas, x, y, a, sz, fcol, fstr);
            case "lh": // 20
                rst = drawLH(canvas, x, y, a, sz, fcol, fstr);
            case "nd": // 21
                rst = drawND(canvas, x, y, a, sz, fcol, fstr);
            case "e":  // 22
                rst = drawE(canvas, x, y, a, sz, fcol, fstr);
            case "ea": // 23
                rst = drawEA(canvas, x, y, a, sz, fcol, fstr);
            case "a":  // 22
                rst = drawA(canvas, x, y, a, sz, fcol, fstr);
            case "aa": // 23
                rst = drawAA(canvas, x, y, a, sz, fcol, fstr);
            case "od": // 24
                rst = drawOD(canvas, x, y, a, sz, fcol, fstr);
            case _:
                rst = new Shape();
        }

        return [rst];
    }
}