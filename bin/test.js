(function (console) { "use strict";
var StringTools = function() { };
StringTools.replace = function(s,sub,by) {
	return s.split(sub).join(by);
};
var com_dongxiguo_continuation_Continuation = function() { };
var com_dongxiguo_continuation_ContinuationDetail = function() { };
var funcgen__$Async_Async_$Impl_$ = function() { };
var funcgen_Async = function() { };
var funcgen_Existentials = function() { };
var funcgen_Forms = function() { };
var funcgen_Functions = function() { };
var funcgen_Main = function() { };
funcgen_Main.async = function(__return) {
	var fn = function() {
		console.log("trace 1");
		return;
	};
	var next2 = function() {
		setTimeout(function() {
			var fn1 = function() {
				console.log("trace 2");
				return;
			};
			var next1 = function() {
				setTimeout(function() {
					var fn2 = function() {
						console.log("trace 3");
						return;
					};
					var next = function() {
						__return();
					};
					window.requestAnimationFrame(function(b) {
						fn2();
						next();
					});
				},100);
			};
			window.requestAnimationFrame(function(b1) {
				fn1();
				next1();
			});
		},100);
	};
	window.requestAnimationFrame(function(b2) {
		fn();
		next2();
	});
};
funcgen_Main.main = function() {
	var wt = function(next) {
		setTimeout(next,100);
	};
	var frm = function(next1) {
		window.requestAnimationFrame(function(n) {
			console.log(1);
			next1();
		});
	};
	funcgen_Main.async(function() {
	});
	var x = 1;
	var y = 2;
	if(x == y) console.log(1);
	if(x == y) console.log(2);
	if(!(x == y)) console.log(1);
	x == 1 && y == 2;
	x == 1 || y == 2;
	!(x == 1);
	if(x == 1 && y == 2) console.log(true);
	StringTools.replace("1,2,3,4,5",",",";");
	"1,2,3,4,5".length;
	"1,2,3,4,5".toLowerCase();
	console.log("1,2,3,4,5".split(","));
	window.requestAnimationFrame(function(el6) {
		return { };
	});
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
	setTimeout(function() {
		console.log(3333);
	},100000);
};
var funcgen_Operators = function() { };
var funcgen_Timer = function() { };
var funcgen_TimeFunctions = function() { };
funcgen_TimeFunctions.to_ms = function(n) {
	return n * 1000;
};
funcgen_TimeFunctions.to_seconds = function(n) {
	return n * 60;
};
var funcgen_TimerTools = function() { };
funcgen_TimerTools.after_seconds = function(n,fn) {
	haxe_Timer.delay(fn,n * 1000);
};
funcgen_TimerTools.after_ms = function(n,fn) {
	haxe_Timer.delay(fn,n);
};
funcgen_TimerTools.after_minutes = function(n,fn) {
	haxe_Timer.delay(fn,n * 60 * 1000);
};
var funcgen_Every = function(n) {
	this.t = n;
};
var funcgen_TimerToolsLight = function() { };
funcgen_TimerToolsLight.after_seconds = function(n,fn) {
	return setTimeout(fn,n * 1000);
};
funcgen_TimerToolsLight.after_ms = function(n,fn) {
	return setTimeout(fn,n);
};
funcgen_TimerToolsLight.after_minutes = function(n,fn) {
	return setTimeout(fn,n * 60 * 1000);
};
var funcgen_EveryLight = function(n) {
	this.t = n;
};
var haxe_Timer = function(time_ms) {
	var me = this;
	this.id = setInterval(function() {
		me.run();
	},time_ms);
};
haxe_Timer.delay = function(f,time_ms) {
	var t = new haxe_Timer(time_ms);
	t.run = function() {
		t.stop();
		f();
	};
	return t;
};
haxe_Timer.prototype = {
	stop: function() {
		if(this.id == null) return;
		clearInterval(this.id);
		this.id = null;
	}
	,run: function() {
	}
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
