package funcgen;


#if macro
  import haxe.macro.Context;
  import haxe.macro.Expr;
#end

class Timer {

  macro public static function frame(exp:Expr) {
    return macro function(next:Void->Void) {
      js.Browser.window.requestAnimationFrame(function(n:Float) {
        $exp;
        next();
      });
    };
  }

  @:extern public static inline function wait(n:Int) {
    return function(next:Void->Void) {
      #if js
        untyped setTimeout(next,n);
      #elseif !macro
        haxe.Timer.delay(next,n);
      #end
    }
  }

}
