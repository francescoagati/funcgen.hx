package funcgen;

import haxe.macro.Context;
import haxe.macro.Expr;
using haxe.macro.ExprTools;
using StringTools;

class Macros {

  public static function replaceSymbol(e:Expr,symbol:String,withExpr:Expr) {
    return switch e {
    case macro $i{name} if (name.startsWith(symbol)):
        return withExpr;
      default: return e.map(function(e) {
        return replaceSymbol(e,symbol,withExpr);
      });
    }
  }

  public static function replace_() return funcgen.Macros.replaceSymbol.bind(_,'_',macro __tmp1);
  public static function replace1() return funcgen.Macros.replaceSymbol.bind(_,'_1',macro __tmp1);
  public static function replace2() return funcgen.Macros.replaceSymbol.bind(_,'_2',macro __tmp2);
  public static function replace3() return funcgen.Macros.replaceSymbol.bind(_,'_3',macro __tmp3);
  public static function replace4() return funcgen.Macros.replaceSymbol.bind(_,'_4',macro __tmp4);
  public static function replace5() return funcgen.Macros.replaceSymbol.bind(_,'_5',macro __tmp5);


}
