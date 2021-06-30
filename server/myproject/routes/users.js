let fs = require('fs');
let multer = require('multer');
var express = require('express');
var router = express.Router();
var user = require('../controller/UserController')

let upload = multer({dest:'./public/uploads/'}).single("file");

router.get('/select', user.getByUsername);
router.get('/register', user.register);
router.post('/editUserImg',upload,user.editUserImg);

module.exports = router;
