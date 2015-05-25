# funcgen.hx

Functions shortcut for haxe. A code variation of [cleversort](https://github.com/jasononeil/cleversort).


```
import funcgen.Functions.*;
using Lambda;


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

```

code generated

```
var list = ["a","b","c"];
list.map(function(el6) {
	return el6.toUpperCase();
}).filter(function(el7) {
	return el7.length == 1;
});
var fnTest = function(el1,el2) {
	return el1 + el2;
};
console.log(fnTest(1,2));
var x = 1;
var y = 2;
var fn1 = function(el11,el21) {
	return el11 == el21;
};
var fn2 = function(el12,el22) {
	return el12 < el22;
};
var fn3 = function(el13,el23) {
	return el13 <= el23;
};
var fn4 = function(el14,el24) {
	return el14 > el24;
};
var fn5 = function(el15,el25) {
	return el15 >= el25;
};
var fn7 = function(el16,el26) {
	return el16 + el26;
};
var fn8 = function(el17,el27) {
	return el17 - el27;
};
var fn9 = function(el18,el28) {
	return el18 * el28;
};
var fn10 = function(el19,el29) {
	return el19 / el29;
};
var fn11 = function(el) {
	return ++el;
};
var fn12 = function(el3) {
	return --el3;
};
var fn13 = function(el4) {
	return !el4;
};
var fn14 = function(el5) {
	return -el5;
};
var fn15 = function(el6) {
	return el6 != null;
};

```
