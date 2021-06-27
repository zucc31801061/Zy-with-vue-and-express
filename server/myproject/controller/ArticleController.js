var dbConfig = require('../util/dbconfig');

//获取新闻列表
getArticle = (req, res) => {
  var sql = "select * from article";
  var sqlArr = [];
  var callBack = (err, data) => {
    if (err) {
      console.log("新闻列表获取失败");
    } else {
      res.send({
        list: data,
      });
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

//获取新闻详细内容
getArticleDetail=(req, res)=>{
  let {id} = req.query;
  var sql = "select section from article_detail where article_id=?";
  var sqlArr = [id];
  var callBack = (err, data) => {
    if (err) {
      console.log("新闻内容获取失败");
    } else {
      res.send({
        list: data,
      });
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
}

module.exports = {
  getArticle,
  getArticleDetail
}
