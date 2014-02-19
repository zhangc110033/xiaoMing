var querystring = require("querystring"), fs = require("fs"), formidable = require("formidable");
function start(response) {
	console.log("Request handler 'start' was called.");
	var body = '<html>' + '<head>' + '<meta http-equiv="Content-Type" content="text/html; ' + 'charset=UTF-8" />' + '</head>' + '<body>' + '<form action="/upload" enctype="multipart/form-data" ' + 'method="post">' + '<input type="file" name="upload" multiple="multiple">' + '<input type="submit" value="Upload file" />' + '</form>' + '</body>' + '</html>';
	response.writeHead(200, { "Content-Type" : "text/html" });
	response.write(body);
	response.end();
}
function upload(response, request) {
	console.log("Request handler 'upload' was called.");
	var form = new formidable.IncomingForm();
	form.parse(request, function(error, fields, files) {
		fs.renameSync(files.upload.path, "/tmp/test.png");
		response.writeHead(200, { "Content-Type" : "text/html" });
		response.write("received image:<br/>");
		response.write("<img src='/show' />");
		response.end();
	});
}
function show(response) {
	console.log("Request handler 'show' was called.");
	fs.readFile("/tmp/test.png", "binary", function(error, file) {
		if (error) {
			response.writeHead(500, { "Content-Type" : "text/plain" });
			response.write(error + "\n");
			response.end();
		} else {
			response.writeHead(200, { "Content-Type" : "image/png" });
			response.write(file, "binary");
			response.end();
		}
	});
}
//获取web资源
function getResources(response, request, pathName) {
	//定义web资源的根目录
	var rootPath = global.projPath + "\\web_resources";
	//没有具体路径,默认访问index.html.有路径将"/"转换成"\"
	var resPath = rootPath + (pathName === "/" ? "\\index.html" : pathName
	.replace(/\//g, "\\"));
	fs.readFile(resPath, "binary", function(error, file) {
		if (error) {
			console.log("exception!!!");
			global.exception._400(response);
		} else {
			console.log("success!!!");
			response.writeHead(200, { "Content-Type" : "text/html" });
			response.write(file, "binary");
			response.end();
		}
	});
	return true;
}
exports["/start"] = start;
exports["/upload"] = upload;
exports["/show"] = show;
exports["getResources"] = getResources;
