(function (console) { "use strict";
var funcgen_Existentials = function() { };
var funcgen_Forms = function() { };
var funcgen_Functions = function() { };
var funcgen_Main = function() { };
funcgen_Main.main = function() {
	var x = 1;
	var y = 2;
	if(x == y) console.log(1);
	if(x == y) console.log(2);
	if(!(x == y)) console.log(1);
	x == 1 && y == 2;
	x == 1 || y == 2;
	!(x == 1);
	if(x == 1 && y == 2) console.log(true);
	window.requestAnimationFrame(function(el6) {
		return { };
	});
	var frame = function(next) {
		window.requestAnimationFrame(function(n) {
			console.log("hello");
			next();
		});
	};
	var wt = function(next1) {
		setTimeout(next1,100);
	};
	var list = ["a","b","c"];
	list.map(function(el7) {
		return el7.toUpperCase();
	}).filter(function(el8) {
		return el8.length == 1;
	});
	var fnTest = function(el1,el2) {
		return el1 + el2;
	};
	console.log(fnTest(1,2));
	var x1 = 1;
	var y1 = 2;
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
	var fn13 = !x1;
	var fn14 = function(el4) {
		return -el4;
	};
	var fn15 = function(el5) {
		return el5 != null;
	};
};
var funcgen_Operators = function() { };
var funcgen_Timer = function() { };
if(Array.prototype.map == null) Array.prototype.map = function(f) {
	var a = [];
	var _g1 = 0;
	var _g = this.length;
	while(_g1 < _g) {
		var i = _g1++;
		a[i] = f(this[i]);
	}
	return a;
};
if(Array.prototype.filter == null) Array.prototype.filter = function(f1) {
	var a1 = [];
	var _g11 = 0;
	var _g2 = this.length;
	while(_g11 < _g2) {
		var i1 = _g11++;
		var e = this[i1];
		if(f1(e)) a1.push(e);
	}
	return a1;
};
funcgen_Main.main();
})(typeof console != "undefined" ? console : {log:function(){}});
