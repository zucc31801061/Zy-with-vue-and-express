<template>
	<div class="news">
		<div class="title">
			<i class="el-icon-s-management zxi"></i>
			<div class="lt">中医资讯</div>
		</div>
		<newslist v-for="news in newsList" :key="news.id" :news="news"></newslist>
		<div class="info">
			<div class="copyrignt">&copy; 2021 移动应用交互设计 zucc 31801061 王灵霜</div>
		</div>
		<el-backtop style="bottom: 80px;"></el-backtop>
	</div>
</template>

<script>
	import newslist from '../sub/newslist.vue'
	import article_data from '../../data/article.js';

	export default {
		name: "News",
		components: {
			newslist
		},
		data() {
			return {
				newsList: null
			};
		},
		created() {
			this.newsList=article_data
		}
	};
</script>

<style type="text/css" scoped>
	.title {
		height: 30px;
		margin-top: 15px;
		margin-left: 10px;
		font-size: 20px;
		font-weight: 600;
		margin-bottom: 2px;
		padding-left: 10px;
		float: left;
	}
	
	.info{
		height: 80px;
		background-image: url(../../imgs/info.png);
		font-size: 12px;
		text-align: ;
	}
	
	.copyrignt{
		padding-top: 55px;
		color: #808080;
	}
	
	.lt {
		margin-left: 32px;
		line-height: 30px;
		height: 30px;
	}
	
	.zxi {
		float: left;
		color: #1A44A0;
		font-size: 30px;
	}
</style>
