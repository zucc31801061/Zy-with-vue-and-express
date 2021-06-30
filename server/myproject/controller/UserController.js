var dbConfig = require("../util/dbconfig");
let fs = require('fs');

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
        msg: "用户名已存在"
      });
    } else {
      res.send({
        code: 200,
        msg: "注册成功"
      });
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

//图片上传
let editUserImg = (req,res)=>{
  if(req.file.length === 0){
      res.render('error',{message:'上传文件不能为空！'});
  }else{
      let file = req.file;
      console.log(file);
      fs.renameSync('./public/uploads/'+file.filename,'./public/uploads/'+file.originalname);
      res.set({
          'content-type':'application/JSON; charset=utf-8'
      })
      let {username}=req.query;
      let imgUrl = 'http://192.168.43.178:3000/public/uploads/'+file.originalname;
      //let imgUrl = 'http://localhost:3000/public/uploads/'+file.originalname;
      let sql =`update user set headimg=? where username=?`;
      let sqlArr = [imgUrl,username];
      dbConfig.sqlConnect(sql,sqlArr,(err,data)=>{
          if(err){
              console.log(err);
              throw '出错了';
          }else{
              if(data.affectedRows == 1){
                  res.send({
                      code:200,
                      msg:'修改成功',
                      url:imgUrl
                  })
              }else{
                  res.send({
                      code:400,
                      msg:'修改失败'
                  })
              }
          }
      })
  }
}

module.exports = {
  getByUsername,
  register,
  editUserImg
};
