var express = require('express');
var router = express.Router();
var encyclopedia = require('../controller/EncyclopediaController')

router.get('/list', encyclopedia.getEncyList);
router.get('/select', encyclopedia.getEncy);
router.get('/detail', encyclopedia.getEncyDetail);
router.get('/detailList', encyclopedia.getEncyDetailList);

module.exports = router;