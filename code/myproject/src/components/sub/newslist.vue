<template>
	<div class="newslist">
		<div class="item" @click="gotoArticle(news.id)">
			<div class="news-cover">
				<img :src="getpath(news.cover)" alt="图片丢失">
			</div>
			<div class="info">
				<div class="news-title">{{ news && news.title }}</div>
				<div class="news-time">{{ getdate(news.time) }}</div>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		name: 'newslist',
		props: {
			news: Object
		},
		methods: {
			gotoArticle(id) {
				this.$router.push('/articledetail/' + id)
			},
			getpath(cover){
				return require('@/imgs/'+cover);
			},
			getdate(time){
				var year = (new Date(time)).getFullYear();
				var month = (new Date(time)).getMonth() + 1;
				var date = (new Date(time)).getDate();
				return year+"年"+month+"月"+date+"日";
			}
		}
	}
</script>

<style type="text/css" scoped>
	.newslist {
		width: 90%;
		display: flex;
		padding-top: 10px;
		padding-bottom: 5px;
		margin-left: 5%;
		border-bottom: 1px solid #dbdbdb;
	}
	
	.item{
		width: 100%;
		display: flex;
		padding: 5px;
	}

	.news-cover {
		flex: none;
		margin-right: 15px;
	}

	.news-cover img {
		width: 120px;
		height: 85px;
		border-radius: 5px;
	}

	.info {
		width: 200px;
	}

	.news-title {
		font-size: 16px;
		font-weight: 500;
		height: 63%;
		text-align: justify;
	}

	.news-time {
		text-align: left;
		font-size: 14px;
		margin-top: 10px;
		color: #c5c5c5;
	}
</style>
