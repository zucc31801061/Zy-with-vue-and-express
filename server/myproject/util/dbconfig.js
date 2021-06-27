const mysql = require("mysql");

//数据库配置
const config = {
  host: "localhost",
  port: "3306",
  user: "root",
  password: "123456",
  database: "zyserver",
};

//连接数据库，使用mysql的连接池连接方式
var pool = mysql.createPool(config);
module.exports = {
  //连接池对象
  sqlConnect: function (sql, sqlArr, callBack) {
    pool.getConnection((err, conn) => {
      if (err) {
        console.log("连接失败");
        return;
      }
      //事件驱动回调
      conn.query(sql, sqlArr, callBack);
      //释放连接
      conn.release();
    });
  },
};
