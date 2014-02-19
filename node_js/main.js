//	教程链接
//	http://www.nodebeginner.org/index-zh-cn.html
//定义工程的跟路径
var exception = require("./server/exception");
global.projPath = __dirname;
global.exception = exception;
var server = require("./server/server");
server.start();
