package funcgen;

#if macro
  import haxe.macro.Context;
  import haxe.macro.Expr;
  using tink.MacroApi;
#end

class Timer {

  macro public static function raf(exp:Expr) {
    return macro function(next:Void->Void) {
      js.Browser.window.requestAnimationFrame(function(n:Float) {
        $exp;
        next();
      });
    };
  }

}
