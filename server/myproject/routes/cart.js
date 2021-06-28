var express = require('express');
var router = express.Router();
var cart = require('../controller/CartController')

router.get('/select', cart.select);
router.get('/getcartid', cart.getCartId);
router.get('/insert', cart.insert);
router.get('/add', cart.add);

module.exports = router;