package funcgen;
import funcgen.Functions.*;
import funcgen.Operators.*;
import funcgen.Existentials.*;
import funcgen.Timer.*;
import funcgen.Forms.*;
import funcgen.Async.*;
using Lambda;
using StringTools;

@:build(com.dongxiguo.continuation.Continuation.cpsByMeta(":async"))
class Main {

  @:async public static function async() {

    @await raf(fn0({
      trace("trace 1");
    }));

    @await sleep(100);

    @await raf(fn0({
      trace("trace 2");
    }));

    @await sleep(100);

    @await raf(fn0({
      trace("trace 3");
    }));

  }


  public static function main() {

    async(function() {});
    var x=1,y=2;

    when(x==y,trace(1));

    when(x==y,{
      trace(2);
    });

    unless(x==y,trace(1));

    and(x==1,y==2);
    or(x==1,y==2);
    not(x==1);
    when(and(x==1,y==2),trace(true));

    with("1,2,3,4,5",{
      _.replace(",",";");
      _.length;
      _.toLowerCase();
      trace(_.split(","));
    });

    js.Browser.window.requestAnimationFrame(fn({}));


    var list = ['a','b','c'];
    list.map(fn(_.toUpperCase())).filter(fn(_.length == 1));

    var fnTest = fn2(_1 + _2);
    trace(fnTest(1,2));

    var x = untyped __js__("1");
    var y = untyped __js__("2");

    var fn1 = eq(x,y);
    var fn2 = lt(x,y);
    var fn3 = lte(x,y);
    var fn4 = gt(x,y);
    var fn5 = gte(x,y);
    var fn7 = add(x,y);
    var fn8 = sub(x,y);
    var fn9 = mul(x,y);
    var fn10 = div(x,y);
    var fn11 = inc(x);
    var fn12 = dec(x);
    var fn13 = not(x);
    var fn14 = neg(x);
    var fn15 = exists(x);
  }
}
