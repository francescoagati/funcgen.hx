package funcgen;
import funcgen.Functions.*;
using Lambda;

class Main {
  public static function main() {

    var list = ['a','b','c'];
    list.map(fn(_.toUpperCase())).filter(fn(_.length == 1));

    var fnTest = fn2(_1 + _2);
    trace(fnTest(1,2));

  }
}
