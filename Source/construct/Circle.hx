package construct;

import openfl.display.Sprite;
import openfl.display.Shape;

class Circle {
    private var _x:Int;
    private var _y:Int;
    private var _r:Int;
    
    public function new (x:Int, y:Int, radius:Int) {
        _x = x;
        _y = y;
        _r = radius;
    }

    public function draw(canvas:Sprite) {
        var cc:Shape = new Shape();
        cc.graphics.beginFill(0x000000);
        cc.graphics.lineStyle (1, 0xAA0000, 1);
        cc.graphics.drawCircle(0, 0, 5);
        cc.graphics.endFill();
        cc.x = _x;
        cc.y = _y;
        canvas.addChild(cc);
        drawCircle(canvas, _x, _y, _r, 0x005588, 1);
        drawCircle(canvas, _x, _y, _r - 4, 0x005588, 3);
        drawCircle(canvas, _x, _y, _r - 8, 0x005588, 1);
        drawCircle(canvas, _x, _y, _r - 16, 0x005588, 1);

        var steps = 24;
        var inc:Float = 360 / steps;
        var accum:Float = 0;
        for(ii in 0...steps) {
            if(ii % 2 == 0) {
                drawArch(canvas, _x, _y, _r - 10, 0x005588, 3, accum, accum + inc);
            }
            accum = accum + inc;
        }

        drawArch(canvas, _x, _y, _r - 20, 0x005588, 3, 90, 180);
        //drawArch(canvas, _x, _y, _r - 3, 0x005588, 5, 270, 360);
        //drawCircle(canvas, _x, _y, _r - 11, 0x005588, 3);

        drawStrip(canvas, _x, _y, _r - 25, 0x005588, 3, 90, 180, 45);
        drawCircles(canvas, _x, _y, _r - 22, 0x005588, 3, 270, 360, 12, true);
        
    }

    private function drawCircle(canvas:Sprite, x:Int, y:Int, r:Int, fcol = 0x005588, fstr = 3):Array<Shape> {
        var circle:Shape = new Shape();
        circle.graphics.lineStyle (fstr, fcol, 1);
        circle.graphics.drawCircle(0, 0, r);
        circle.x = x;
        circle.y = y;
        canvas.addChild(circle);
        return [circle];
    }

    private function drawCircles(canvas: Sprite, x:Int, y:Int, r:Int, fcol = 0x005588, fstr = 3, start_angle:Float = 0, end_angle:Float = 360, steps:Int = 10, fill = true) {
        var section = new Shape();

        var r_int = fstr;
        var r_rel = r - (fstr / 2);

        var inc_angle:Float = Math.abs(end_angle - start_angle) / steps;
        inc_angle = (inc_angle / 180) * Math.PI;
        var accum_angle:Float = (start_angle / 180) * Math.PI;
        
        if(fill) {
            section.graphics.beginFill(fcol);
        }

        section.graphics.lineStyle (fstr, fcol, 1);
        for(ii in 0...steps) {
            accum_angle += inc_angle;
            trace(ii, accum_angle);

            var x_iter:Float = x + r_rel * Math.cos(accum_angle);
            var y_iter:Float = y + r_rel * Math.sin(accum_angle);

            section.graphics.drawCircle(x_iter, y_iter, r_int);
        }

        if(fill) {
            section.graphics.endFill();
        }

        canvas.addChild(section);
        return [section];
    }

    private function drawArch(canvas:Sprite, x:Int, y:Int, r:Int, fcol = 0x005588, fstr = 3, start_angle:Float = 0, end_angle:Float = 360):Array<Shape> {
        var section = new Shape();
        section.graphics.beginFill(fcol);

        var r_ext = r;
        var r_int = r - fstr;
        
        var x_str_int:Float = x + r_int * Math.cos(start_angle / 180 * Math.PI);
        var y_str_int:Float = y + r_int * Math.sin(start_angle / 180 * Math.PI);

        var x_str_ext:Float = x + r_ext * Math.cos(start_angle / 180 * Math.PI);
        var y_str_ext:Float = y + r_ext * Math.sin(start_angle / 180 * Math.PI);
        
        section.graphics.moveTo(x_str_int, y_str_int);
        section.graphics.lineTo(x_str_ext, y_str_ext);

        var num_quarters:Int = Math.ceil(Math.abs(end_angle - start_angle) / 45);
        var inc_angle:Float = Math.abs(end_angle - start_angle) / num_quarters;
        inc_angle = (inc_angle / 180) * Math.PI;
        var accum_angle:Float = (start_angle / 180) * Math.PI;

        for(ii in 0...num_quarters) {
            accum_angle += inc_angle;
            var mid_angle:Float = accum_angle - (inc_angle / 2);

            var x_cent:Float = x + (r_ext / Math.cos(inc_angle / 2)) * Math.cos(mid_angle);
            var y_cent:Float = y + (r_ext / Math.cos(inc_angle / 2)) * Math.sin(mid_angle);

            var x_iter:Float = x + r_ext * Math.cos(accum_angle);
            var y_iter:Float = y + r_ext * Math.sin(accum_angle);

            section.graphics.curveTo(x_cent, y_cent, x_iter, y_iter);
        }


        var x_iter:Float = x + r_int * Math.cos(accum_angle);
        var y_iter:Float = y + r_int * Math.sin(accum_angle);
        section.graphics.lineTo(x_iter, y_iter);
        
	    for(ii in 0...num_quarters) {
            accum_angle -= inc_angle;
            var mid_angle:Float = accum_angle + (inc_angle / 2);

            var x_cent:Float = x + (r_int / Math.cos(inc_angle / 2)) * Math.cos(mid_angle);
            var y_cent:Float = y + (r_int / Math.cos(inc_angle / 2)) * Math.sin(mid_angle);

            x_iter = x + r_int * Math.cos(accum_angle);
            y_iter = y + r_int * Math.sin(accum_angle);

            section.graphics.curveTo(x_cent, y_cent, x_iter, y_iter);
        }
        

        section.graphics.lineTo(x_str_int, y_str_int);

        section.graphics.endFill();
        canvas.addChild(section);

        return [section];  
    }
    
    private function drawStrip(canvas:Sprite, x:Int, y:Int, r:Int, fcol = 0x005588, fstr = 3, start_angle:Float = 0, end_angle:Float = 360, steps:Int = 10):Array<Shape> {
        var rst:Array<Shape> = [];
        var inc:Float = 90 / steps;
        var accum:Float = 90;
        for(ii in 0...steps) {
            if(ii % 2 == 0) {
                var x = drawArch(canvas, x, y, r, fcol, fstr, accum, accum + inc);
                rst = rst.concat(x);
            }
            accum = accum + inc;
        }
        return rst;
    } 
}  