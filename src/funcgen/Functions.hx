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

	macro public static function fn2(filter:Expr) {
		var new_filter = filter.substitute({ "_1": macro el1 });
		new_filter = new_filter.substitute({ "_2": macro el2 });
		return macro function(el1,el2) { return $new_filter;  };
	}
}
