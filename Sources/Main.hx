package;

import kha.Scheduler;
import kha.System;

class Main {

	public static function main() {
		System.init({title: "InstancedExample", width: 800, height: 600}, init);
	}

	static function init() {
		var game = new InstancedExample();
		System.notifyOnRender(game.render);
		Scheduler.addTimeTask(game.update, 0, 1 / 60);
	}
}
