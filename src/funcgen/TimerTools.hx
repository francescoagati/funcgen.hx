package funcgen;

import haxe.Timer;
using TimerTools.TimeFunctions;


class TimeFunctions {

  public static inline function to_ms(n:Int) {
    return n * 1000;
  }


  public static inline function to_seconds(n:Int) {
    return n * 60;
  }

}


class TimerTools
{

	public static inline function after_seconds(n:Int, fn:Void->Void) {
		Timer.delay(fn, n.to_ms());
	}

	public static inline function after_ms(n:Int, fn:Void->Void) {
		Timer.delay(fn, n);
	}

	public static inline function after_minutes(n:Int, fn:Void->Void) {
		Timer.delay(fn, n.to_seconds().to_ms());
	}


	@:extern
	public static inline function every(n:Int):Every {
		return new Every(n);
	}

}


class Every {
		var  t:Int;
		@:extern
		public inline function  new(n:Int) {
		  t = n;
		}

		@:extern
	  inline public function seconds(f:Void->Void) {
		  var tm = new Timer(t.to_ms());
			tm.run = f;
			return tm;
		}

		@:extern
	  inline public function minutes(f:Void->Void) {
		  var tm = new Timer(t.to_seconds().to_ms());
			tm.run = f;
			return tm;
		}


		@:extern
	  inline public function ms(f:Void->Void) {
		  var tm = new Timer(t);
			tm.run = f;
			return tm;
		}

}

class TimerToolsLight {

	public static inline function after_seconds(n:Int, fn:Void->Void) {
		return untyped setTimeout(fn, n.to_ms());
	}

	public static inline function after_ms(n:Int, fn:Void->Void) {
		return untyped setTimeout(fn, n);
	}

	public static inline function after_minutes(n:Int, fn:Void->Void) {
		return untyped setTimeout(fn, n.to_seconds().to_ms());
	}


	@:extern
	public static inline function now_rq(n:Int,fn:Void->Void) {
		return untyped window.requestAnimationFrame(fn);
	}




	@:extern
	public static inline function every(n:Int) {
		return new EveryLight(n);
	}

	@:extern
	public static inline function clearTimeout(n:Int) {
		untyped window.clearTimeout(n);
	}

	@:extern
	public static inline function clearInterval(n:Int) {
		untyped window.clearInterval(n);
	}

}


class EveryLight {
		var  t:Int;
		@:extern
		public inline function  new(n:Int) {
		  t = n;
		}

		@:extern
	  inline public function seconds(f:Void->Void):Int {
			return untyped setInterval(f, t.to_ms());
		}

		@:extern
	  inline public function minutes(f:Void->Void):Int {
			return untyped setInterval(f, t.to_seconds().to_ms() );
		}


		@:extern
	  inline public function ms(f:Void->Void):Int {
			return untyped setInterval(f, t);
		}

}
