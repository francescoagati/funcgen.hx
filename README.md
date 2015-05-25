# funcgen.hx

Inspired by [cleversort](https://github.com/jasononeil/cleversort) and scala shortcuts a function generator for getter paths short expressions.


```
var list = ['a','b','c'];
list.map(fn(_.toUpperCase())).filter(fn(_.length == 1));

var fnTest = fn2(_1 + _2);
trace(fnTest(1,2));
```

code generated

```
var list = ["a","b","c"];
list.map(function(el) {
	return el.toUpperCase();
}).filter(function(el3) {
	return el3.length == 1;
});
var fnTest = function(el1,el2) {
	return el1 + el2;
};
console.log(fnTest(1,2));
```
