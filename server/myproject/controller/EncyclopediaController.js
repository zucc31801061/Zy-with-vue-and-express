var dbConfig = require("../util/dbconfig");

//获取百科列表
getEncyList = (req, res) => {
  var sql = "select * from encyclopedia";
  var sqlArr = [];
  var callBack = (err, data) => {
    if (err) {
      console.log("百科列表获取失败");
    } else {
      res.send({
        list: data,
      });
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

//获取百科
getEncy = (req, res) => {
  let { id } = req.query;
  var sql = "select * from encyclopedia where id=?";
  var sqlArr = [id];
  var callBack = (err, data) => {
    if (err) {
      console.log("百科获取失败");
    } else {
      res.send({
        list: data,
      });
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

//获取百科详细内容
getEncyDetail = (req, res) => {
  let { id } = req.query;
  var sql = "select section from ency_detail where ency_id=?";
  var sqlArr = [id];
  var callBack = (err, data) => {
    if (err) {
      console.log("百科内容获取失败");
    } else {
      res.send({
        list: data,
      });
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

//获取详细内容列表
getEncyDetailList = (req, res) => {
  let { id } = req.query;
  var sql = "select * from ency_detail";
  var sqlArr = [id];
  var callBack = (err, data) => {
    if (err) {
      console.log("百科内容获取失败");
    } else {
      res.send({
        list: data,
      });
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

//模糊查询获取百科
searchEncy = (req, res) => {
  let { name } = req.query;
  var sql = "select * from encyclopedia where name like '%"+name+"%'";
  var sqlArr = [name];
  var callBack = (err, data) => {
    if (err) {
      console.log("百科获取失败");
      console.log(sql);
    } else {
      console.log(name);
      console.log(data);
      console.log(sql);
      res.send({
        list: data,
      });
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

module.exports = {
  getEncyList,
  getEncy,
  getEncyDetail,
  getEncyDetailList,
  searchEncy
};
