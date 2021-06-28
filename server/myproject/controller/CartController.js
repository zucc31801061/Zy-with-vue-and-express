var dbConfig = require("../util/dbconfig");

//查询购物车
select = (req, res) => {
  let productid = req.query.productid;
  let cartid = req.query.cartid;
  var sql = "select * from cart_num where cart_id=? and product_id=?";
  var sqlArr = [cartid, productid];
  var callBack = (err, data) => {
    if (err) {
      console.log("购物车无此商品");
    } else {
      if (data.length != 0) {
        res.send({
          code: 200,
          msg: "已找到商品项",
          list: data,
        });
      } else {
        res.send({
          code: 400,
          msg: "该商品不存在"
        });
      }
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

getCartId = (req, res) => {
  let username = req.query.username;
  var sql = "select id from cart where username=?";
  var sqlArr = [username];
  var result = "";
  var callBack = (err, data) => {
    if (err) {
      res.send({
        code: 400,
        msg: "无此购物车"
      });
    } else {
      if (data.length != 0) {
        res.send({
          code: 200,
          msg: "已找到该购物车",
          list: data,
        });
      } else {
        res.send({
          code: 400,
          msg: "无此购物车"
        });
      }
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
  return result;
};

insert = (req, res) => {
  let productid = req.query.productid;
  let cartid = req.query.cartid;
  var sql = "insert into cart_num (product_id,cart_id,num) values(?,?,1)";
  var sqlArr = [productid, cartid];
  var callBack = (err, data) => {
    if (err) {
      res.send({
        code: 400,
        msg: "该商品已存在",
      });
    } else {
      res.send({
        code: 200,
        msg: "添加成功",
      });
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

add = (req, res) => {
  let productid = req.query.productid;
  let cartid = req.query.cartid;
  var sql = "update cart_num set num=num+1 where cart_id=? and product_id=?";
  var sqlArr = [cartid, productid];
  var callBack = (err, data) => {
    if (err) {
      res.send({
        code: 400,
        msg: "该商品不存在",
      });
    } else {
      res.send({
        code: 200,
        msg: "添加成功",
      });
    }
  };
  dbConfig.sqlConnect(sql, sqlArr, callBack);
};

module.exports = {
  select,
  getCartId,
  insert,
  add,
};
