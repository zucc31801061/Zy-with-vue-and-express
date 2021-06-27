var createError = require("http-errors");
var express = require("express");
var path = require("path");
var bodyParser = require("body-parser");
var cookieParser = require("cookie-parser");

var indexRouter = require("./routes/index");
var usersRouter = require("./routes/users");
var articleRouter = require("./routes/article");
var productRouter = require("./routes/product");
var encyclopediaRouter = require("./routes/encyclopedia");

var app = express();

//改写
var http = require("http");
const { urlencoded } = require("body-parser");
var server = http.createServer(app);

app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, "public")));

//跨域
app.all("*", function (req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "X-Requested-With");
  res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
  res.header("X-Powered-By", " 3.2.1");
  res.header("Content-Type", "application/json;charset=utf-8");
  next();
});

//静态资源
app.use(express.static(path.join(__dirname, 'public')));

//post请求
app.use(urlencoded({extended: true}));

app.use("/", indexRouter);
app.use("/users", usersRouter);
app.use("/article", articleRouter);
app.use("/product", productRouter);
app.use("/encyclopedia", encyclopediaRouter);

server.listen(3000);
