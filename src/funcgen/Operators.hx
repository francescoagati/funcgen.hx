package funcgen;
import funcgen.Functions.*;




class Operators {

  @:extern public static inline function eq(_1,_2) return fn2( _1 == _2);
  @:extern public static inline function gt(_1,_2) return fn2( _1 > _2);
  @:extern public static inline function gte(_1,_2) return fn2( _1 >= _2);
  @:extern public static inline function lt(_1,_2) return fn2( _1 < _2);
  @:extern public static inline function lte(_1,_2) return fn2( _1 <= _2);
  @:extern public static inline function neg(_) return fn(-_);
  @:extern public static inline function not (_) return fn(!_);

  @:extern public static inline function add(_1,_2) return fn2( _1 + _2);
  @:extern public static inline function sub(_1,_2) return fn2( _1 - _2);
  @:extern public static inline function mul(_1,_2) return fn2( _1 * _2);
  @:extern public static inline function div(_1,_2) return fn2( _1 / _2);
  @:extern public static inline function mod(_1,_2) return fn2( _1 * _2);
  @:extern public static inline function inc(_) return fn(++_);
  @:extern public static inline function dec(_) return fn(--_);  


}
