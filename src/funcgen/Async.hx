package funcgen;

class Async {

  @:extern public static inline function sleep(n:Int,next:Void->Void) untyped setTimeout(next,n);
  @:extern public static inline function raf(fn:Void->Void,next:Void->Void) {
    js.Browser.window.requestAnimationFrame(function(b) {
      fn();
      next();
    });
  }  

}
