var dbConfig = require("../util/dbconfig");

//用户获取
getByUsername = (req, res) => {
  let { username } = req.query;
  var sql = "select * from user where username=?";
  var sqlArr = [username];
  var callBack = (err, data) => {
    if (err) {
      console.log("寻找有误");
    } else {
      if (data.length != 0) {
        res.send({
          code: 200,
          msg: "已找到该用户",
          list: data,
        });
      } else {
        res.send({
          code: 400,
          msg: "该用户不存在",
          list: data,
        });
      }
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

//用户注册
register = (req, res) => {
  let username = req.query.username;
  let pwd = req.query.pwd;
  var sql = "insert into user (username,pwd) values(?,?);insert into cart (username) values(?);";
  var sqlArr = [username, pwd, username];
  var callBack = (err, data) => {
    if (err) {
      console.log("用户名已存在");
      res.send({
        code: 400,
        msg: "用户名已存在",
      });
    } else {
      res.send({
        code: 200,
        msg: "注册成功",
        list: data,
      });
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

module.exports = {
  getByUsername,
  register,
};
