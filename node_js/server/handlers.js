var querystring = require("querystring"), fs = require("fs"), formidable = require("formidable");
var extension = require("./extension"), db = require('./service/dbConnectService'), mongoose = require("mongoose");
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
	//文件后缀名
	var pathArr = resPath.split("."), exts = pathArr[pathArr.length - 1];
	fs.readFile(resPath, "binary", function(error, file) {
		if (error) {
			global.exception._400(response);
		} else {
			console.log("extension : " + extension);
			response
			.writeHead(200, { "Content-Type" : extension[exts] || "text/html" });
			response.write(file, "binary");
			response.end();
		}
	});
	return true;
}
//mongoDB数据库连接
function save(response, request, pathName) {
	var PersonSchema = new mongoose.Schema({ name : String });
	var PersonModel = db.mongoose.model("Person", PersonSchema);
	var personEntity = new PersonModel({ name : "candy" });
	console.log(personEntity.name);
	personEntity.save();
	exception._200(response);
}
function get(response, request, pathName) {
	var PersonSchema = new mongoose.Schema({ name : String, date : date });
	var PersonModel = db.mongoose.model("Person", PersonSchema);
	var personEntity = new PersonModel({
		name : "Krouky",
		date : new Date().toString() });
	var name = PersonModel.find(function(err, persons) {
		console.info(persons);
		response.writeHead("Content-type", "text/plain");
		response.write("200 ok");
		response.end(persons.toString());
	});
}
exports["/start"] = start;
exports["/upload"] = upload;
exports["/show"] = show;
exports["getResources"] = getResources;
exports["/save"] = save;
exports["/get"] = get;