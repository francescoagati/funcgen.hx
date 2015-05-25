package funcgen;
import funcgen.Functions.*;

class Existentials {
  @:extern public static inline function exists  (_) return fn(_ != null);
}
