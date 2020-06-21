// js调试技巧

/*
基本输出：
*/
console.log();
console.info();
console.warn();
console.error();
/*断言输出：*/
console.assert(true, 'true')
console.assert(false, 'false')
/*分组输出：
将部分 console 语句放入 group 与 groupEnd 之间，可以形成将这部分 console 语句划定为一组信息进行输出*/
console.group('1')
console.log('1-1')
console.warn('1-2')
console.error('1-3')
console.groupEnd()

console.group('2')
console.log('2-1')
console.warn('2-2')
console.error('2-3')
console.groupEnd()


/*
a、debugger
	这个是非常暴力的debugger ，只要将它写到js的代码里当程序走到这个位置就会停留一下，
	在你想在某个情况下执行时可以添加爱条件限制，满足条件时再进行停留。
*/
if (this){
	//命令
	debugger;
};
/*
将堆栈对象输出成表格 到控制台  适用于对对象的集合
*/
var animals = [
    { animal: 'Horse', name: 'Henry', age: 43 },
    { animal: 'Dog', name: 'Fred', age: 13 },
    { animal: 'Cat', name: 'Frodo', age: 18 }
];
//命令
console.table(animals);


/**
计次输出
*/
for(let i = 0; i < 5; i++){
    console.count("num");
}
console.count("num");
console.count("anotherNum")

/*
测试方法的耗时
当你想知道某些代码的执行时间的时候这个工具将会非常有用，特别是当你定位很耗时的循环的时候。
你甚至可以通过标签来设置多个 timer 。demo 如下:
*/
//命令
console.time('Timer1');
var items = [];
for(var i = 0; i < 100000; i++){
   items.push({index: i});
}
//命令
console.timeEnd('Timer1');


/*
获取函数的堆栈轨迹信息
你可能知道 JavaScript 框架会产生很多的代码--迅速的。
它创建视图触发事件而且你最终会想知道函数调用是怎么发生的。
因为 JavaScript 不是一个很结构化的语言，有时候很难完整的了解到底发生了什么以及什么时候发生的。 
这个时候就轮到 console.trace（在终端的话就只有 trace ）出场来调试 JavaScript了 。
假设你现在想看 car 实例在第33行调用 funcZ 函数的完整堆栈轨迹信息:
*/

var car;
var func1 = function() {
	func2();
}
var func2 = function() {
	func4();
}
var func4 = function() {
	car = new Car();
	car.funcX();
}
var Car = function() {
	this.brand = 'volvo';
	this.color = 'red';
	this.funcX = function() {
		this.funcY();
	}
	this.funcY = function() {
		this.funcZ();
	}
	this.funcZ = function() {
		console.trace('trace car');
	}
}
func1();


你可以看到func1调用了func2, func2又调用了func4。Func4 创建了Car的实例，然后调用了方法car.funcX，等等。
尽管你感觉你对自己的脚本代码非常了解，这种分析依然是有用的。 比如你想优化你的代码。 
获取到堆栈轨迹信息和一个所有相关函数的列表。每一行都是可点击的，你可以在他们中间前后穿梭。 这感觉就像特地为你准备的菜单。


/*
格式化代码使调试 JavaScript 变得容易

有时候你发现产品有一个问题，而 source map 并没有部署到服务器。不要害怕。Chrome 可以格式化 JavaScript 文件，使之易读。
格式化出来的代码在可读性上可能不如源代码 —— 但至少你可以观察到发生的错误。点击源代码查看器下面的美化代码按钮 {} 即可。
*/



/*
快速找到调试函数
*/

来看看怎么在函数中设置断点。
通常情况下有两种方法：
在查看器中找到某行代码并在此添加断点
在脚本中添加 debugger
这两种方法都必须在文件中找到需要调试的那一行。
使用控制台是不太常见的方法。在控制台中使用 debug(funcName)，代码会在停止在进入这里指定的函数时。
这个操作很快，但它不能用于局部函数或匿名函数。不过如果不是这两种情况下，这可能是调试函数最快的方法。
（注意：这里并不是在调用 console.debug 函数）。
var func1 = function() {
func2();
};
var Car = function() {
this.funcX = function() {
this.funcY();
}
this.funcY = function() {
this.funcZ();
}
}
var car = new Car();
在控制台中输入 debug(car.funcY)，脚本会在调试模式下，进入 car.funcY 的时候停止运行：


/*
在复杂的调试过程中寻找重点
*/

在更复杂的调试中，我们有时需要输出很多行。你可以做的事情就是保持良好的输出结构，使用更多控制台函数，
例如 Console.log，console.debug，console.warn，console.info，console.error 等等。
然后，你可以在控制台中快速浏览。但有时候，某些JavaScrip调试信息并不是你需要的。
现在，可以自己美化调试信息了。在调试JavaScript时，可以使用CSS并自定义控制台信息：
console.todo = function(msg) {
console.log(' % c % s % s % s', 'color: yellow; background - color: black;', '–', msg, '–');
}
console.important = function(msg) {
console.log(' % c % s % s % s', 'color: brown; font - weight: bold; text - decoration: underline;', '–', msg, '–');
}
console.todo('This is something that’ s need to be fixed');
console.important('This is an important message');

/*
查看具体的函数调用和它的参数  (不一定好使)
*/
在 Chrome 浏览器的控制台（Console）中，你会把你的注意力集中在具体的函数上。每次这个函数被调用，它的值就会被记录下来。

/*
节点变化时中断
*/

DOM 是个有趣的东西。有时候它发生了变化，但你却并不知道为什么会这样。
不过，如果你需要调试 JavaScript，Chrome 可以在 DOM 元素发生变化的时候暂停处理。你甚至可以监控它的属性。
在 Chrome 探查器上，右键点击某个元素，并选择中断（Break on）选项来使用：

