//	�̳�����
//	http://www.nodebeginner.org/index-zh-cn.html
//���幤�̵ĸ�·��
var exception = require("./server/exception");
global.projPath = __dirname;
global.exception = exception;
var server = require("./server/server");
server.start();
