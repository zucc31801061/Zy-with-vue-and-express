var express = require('express');
var router = express.Router();
var user = require('../controller/UserController')

router.get('/select', user.getByUsername);
router.get('/register', user.register);

module.exports = router;
