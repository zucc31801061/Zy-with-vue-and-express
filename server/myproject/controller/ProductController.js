var dbConfig = require('../util/dbconfig');

//获取商品列表
getProductList = (req, res) => {
  var sql = "select * from product";
  var sqlArr = [];
  var callBack = (err, data) => {
    if (err) {
      console.log("商品列表获取失败");
    } else {
      res.send({
        list: data,
      });
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

module.exports = {
  getProductList
}