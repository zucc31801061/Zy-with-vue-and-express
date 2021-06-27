var express = require('express');
var router = express.Router();
var article = require('../controller/ArticleController')

router.get('/list', article.getArticle);
router.get('/detail', article.getArticleDetail);

module.exports = router;