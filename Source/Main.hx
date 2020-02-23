package;

import openfl.display.Sprite;
import construct.Circle;


class Main extends Sprite {
	public function new() {
		super();
		init();
	}

	public function init() {
		var circle = new Circle(300, 300, 200);
		circle.draw(this);
	}
}
