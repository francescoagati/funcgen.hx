(function (console) { "use strict";
var funcgen_Functions = function() { };
var funcgen_Main = function() { };
funcgen_Main.main = function() {
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
};
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
