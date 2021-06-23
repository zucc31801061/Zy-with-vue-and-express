<template>
	<div class="articlepage">
		<div class="back" @click="back()"><u>返回上一页></u></div>
		<div class="articledetail" v-for="item in this.newsList" v-if="$route.params.id == item.id">
			<div class="atitle">{{ item && item.title }}</div>
			<div class="time">{{ item.time }}</div>
			<div class="img">
				<img :src="item.cover" alt="图片丢失">
			</div>
			<div class="content">
				<p v-for="p in item.content">{{ p }}</p><br>
			</div>
		</div>
		<div class="other">
			<div class="oarticle" v-for="item in this.newsList" v-if="$route.params.id == item.id + 1">
				<div class="otitle" @click="goto(item.id)">上一篇：{{item && item.title}}</div>
			</div>
			<div class="oarticle" v-for="item in this.newsList" v-if="$route.params.id == item.id - 1">
				<div class="otitle" @click="goto(item.id)">下一篇：{{item && item.title}}</div>
			</div>
		</div>
		<div class="recommend">
			<div class="title">
				相关推荐
			</div>
			<newslist v-for="news in newsList" v-if="news.id != $route.params.id" :key="news.id" :news="news">
			</newslist>
		</div>
		<el-backtop style="bottom: 80px;"></el-backtop>
	</div>
</template>

<script>
	import newslist from '../sub/newslist.vue'
	import article_data from '../../data/article.js';

	export default {
		name: 'articlepage',
		components: {
			newslist
		},
		data() {
			return {
				newsList: null
			};
		},
		methods: {
			goto(id) {
				this.$router.push('/articledetail/' + id)
			},
			back() {
				this.$router.go(-1);
			}
		},
		created() {
			this.newsList = article_data
		}
	}
</script>

<style type="text/css" scoped>
	p {
		text-align: justify;
		text-justify: inter-ideograph;
	}

	.articlepage {
		background-color: #e6edf2;
	}

	.articledetail {
		width: 310px;
		padding: 20px 25px 0px 25px;
		background-color: #fff;
	}

	.atitle {
		width: 280px;
		margin-left: 15px;
		font-size: 20px;
		font-weight: 600;
	}

	.time {
		margin: 15px;
	}

	.img img {
		width: 310px;
		border-radius: 10px;
	}

	.other {
		width: 310px;
		margin-top: 30px;
		padding: 0px 25px;
		background-color: #fff;
	}

	.oarticle {
		padding: 25px 0px;
		border-bottom: 1px solid #dbdbdb;
	}

	.recommend {
		margin-top: 30px;
		background-color: #fff;
		height: 393px;
		overflow: hidden;
	}

	.title {
		height: 30px;
		margin-top: 15px;
		margin-left: 15px;
		border-left: 5px solid #1A44A0;
		font-size: 20px;
		font-weight: 600;
		margin-bottom: 2px;
		padding-left: 10px;
		float: left;
	}

	.back {
		text-align: right;
		padding-top: 10px;
		padding-right: 25px;
		padding-bottom: 10px;
		background-color: #fff;
		color: royalblue;
	}
</style>
