var express = require('express');
var router = express.Router();
var product = require('../controller/ProductController')

router.get('/list', product.getProductList);

module.exports = router;