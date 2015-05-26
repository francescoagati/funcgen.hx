package funcgen;

#if macro
  import haxe.macro.Context;
  import haxe.macro.Expr;
  using tink.MacroApi;
#end

class Functions {

  macro public static function fn(filter:Expr) {
    var new_filter = filter.substitute({ "_": macro el });
    return macro function(el) { return $new_filter;  };
  }


  macro public static function fn0(filter:Expr) return macro function() { return $filter;  };
  
 
  
  macro public static function fn1(filter:Expr) {
    var new_filter = filter.substitute({ "_1": macro el });
    return macro function(el) { return $new_filter;  };
  }
  
  
  macro public static function fn2(filter:Expr) {
    var new_filter = filter.substitute({ "_1": macro el1 }).substitute({ "_2": macro el2 });
    return macro function(el1,el2) { return $new_filter;  };
  }

  macro public static function fn3(filter:Expr) {
    var new_filter = filter
      .substitute({ "_1": macro el1 })
      .substitute({ "_2": macro el2 })
      .substitute({ "_3": macro el3 });
    return macro function(el1,el2,el3) { return $new_filter;  };
  }

  macro public static function fn4(filter:Expr) {
    var new_filter = filter
      .substitute({ "_1": macro el1 })
      .substitute({ "_2": macro el2 })
      .substitute({ "_3": macro el3 })
      .substitute({ "_4": macro el4 });
    return macro function(el1,el2,el3,el4) { return $new_filter;  };
  }

  macro public static function fn5(filter:Expr) {
    var new_filter = filter
      .substitute({ "_1": macro el1 })
      .substitute({ "_2": macro el2 })
      .substitute({ "_3": macro el3 })
      .substitute({ "_4": macro el4 })
      .substitute({ "_5": macro el5 });
    return macro function(el1,el2,el3,el4,el5) { return $new_filter;  };
  }

}
