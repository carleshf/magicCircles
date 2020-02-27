package utils;

class RuneText {
    public static function generate(nchar:Int):Array<String> {
        var options:Array<String> = [ "p", "b", "f", "v", "m",
            "mh", "t", "th", "d", "dh", "ch", "sh", "j", "zh",
            "k", "g", "kh", "gh", "l", "lh", "nd", "e", "ea",
            "a", "aa", "od"];
        
        var out_value:Array<String> = [];
        var out_pos:Array<Int> = [];
        var rst:Array<String> = [];

        out_pos.push(Std.random(options.length - 1));
        out_value.push(options[out_pos[0]]);
        rst.push(out_value[0]);
        options.remove(out_value[0]);

        for(ii in 0...nchar) {
            out_pos.push(Std.random(options.length - 1));
            out_value.push(options[out_pos[1]]);
            rst.push(out_value[1]);
            options.remove(out_value[1]);

            options.insert(out_pos.shift(), out_value.shift());
        }
        return rst;
    }
}