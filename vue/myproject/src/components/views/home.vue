<template>
	<div class="home">
		<carousel></carousel>
		<div class="model">
			<div class="item">
				<img src="../../imgs/m-1.jpg">
				<span>中医推拿</span>
			</div>
			<div class="item">
				<img src="../../imgs/m-2.jpg">
				<span>中医拔罐</span>
			</div>
			<div class="item">
				<img src="../../imgs/m-3.jpg">
				<span>中医刮痧</span>
			</div>
			<div class="item">
				<img src="../../imgs/m-4.jpg">
				<span>中医针灸</span>
			</div>
		</div>
		<div class="myinput">
			<el-input placeholder="请输入内容" v-model="search">
				<template #append>
					<el-button icon="el-icon-search" @click="searchme"></el-button>
				</template>
			</el-input>
		</div>
		<div class="title">
			<i class="el-icon-s-platform bki"></i>
			<div class="lt">中医百科</div>
		</div>
		<div class="bk">
			<encyclopedias v-for="encyclopedias in encyclopediasList" :key="encyclopedias.id"
				:encyclopedias="encyclopedias" :contentList="contentList"></encyclopedias>
		</div>
		<div class="title">
			<i class="el-icon-s-shop rmi"></i>
			<div class="lt">中医商城</div>
		</div>
		<div class="shop">
			<shop1 v-for="product in productList.slice(0,2)" :key="product.id" :product="product" :user="user"></shop1>
		</div>
		<div class="title">
			<i class="el-icon-s-management zxi"></i>
			<div class="lt">中医资讯</div>
		</div>
		<div class="news">
			<newslist v-for="news in newsList.slice(0,3)" :key="news.id" :news="news"></newslist>
		</div>
		<div class="banner">
			<img src="../../imgs/banner.jpg">
		</div>
		<div class="info">
			<div class="copyrignt">&copy; 2021 移动应用交互设计 zucc 31801061 王灵霜</div>
		</div>
		<el-backtop style="bottom: 80px;"></el-backtop>
	</div>
</template>

<script>
	import carousel from '../sub/carousel.vue';
	import newslist from '../sub/newslist.vue';
	import shop1 from '../sub/shop1.vue'
	import encyclopedias from '../sub/encyclopedias.vue'

	export default {
		name: "Home",
		props: {
			user: Object
		},
		components: {
			carousel,
			newslist,
			shop1,
			encyclopedias
		},
		data() {
			return {
				newsList: [],
				productList: [],
				encyclopediasList: [],
				contentList: [],
				search: ''
			};
		},
		methods: {
			searchme(){
				this.axios.get("http://localhost:3000/encyclopedia/search?name="+this.search).then(
					res => {
						this.encyclopediasList = res.data.list;
					});
			}
		},
		created() {
			this.axios.get("http://localhost:3000/article/list").then(
				res => {
					this.newsList = res.data.list;
				});
			this.axios.get("http://localhost:3000/product/list").then(
				res => {
					this.productList = res.data.list;
				});
			this.axios.get("http://localhost:3000/encyclopedia/list").then(
				res => {
					this.encyclopediasList = res.data.list;
				});
			this.axios.get("http://localhost:3000/encyclopedia/detaillist").then(
				res => {
					this.contentList = res.data.list;
				});
		}
	};
</script>

<style type="text/css" scoped>
	.home {
		background-color: #f8f8f8;
	}

	.myinput {
		width: 89%;
		padding: 10px 20px;
		background-color: #fff;
		margin-top: 5px;
	}

	.model {
		display: inline-block;
		padding: 20px 15px 20px 15px;
		background-color: #fff;
		margin-top: 10px;
	}

	.item {
		float: left;
		width: 20%;
		padding: 0 2.5%;
		text-align: center;
	}

	.item span {
		font-size: 12px;
		float: left;
		margin-left: 8px;
		margin-top: 5px;
	}

	.item img {
		width: 58px;
		height: 58px;
		border-radius: 50%;
		float: left;
		margin: 3px;
	}

	.title {
		height: 30px;
		margin-top: 15px;
		margin-left: 15px;
		font-size: 20px;
		font-weight: 600;
		text-align: left;
		line-height: 30px;
	}

	.rmi {
		float: left;
		color: crimson;
		font-size: 30px;
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

	.bk {
		width: 100%;
		margin-top: 15px;
		background-color: #fff;
		overflow-x: scroll;
		overflow-y: hidden;
		white-space: nowrap;
	}

	.encyclopedias {
		display: inline-block;
		white-space: normal;
	}

	.bki {
		float: left;
		color: green;
		font-size: 30px;
	}

	.shop {
		margin-top: 15px;
	}

	.news {
		margin-top: 15px;
		background-color: #fff;
		padding-bottom: 10px;
	}

	.banner {
		margin-top: 15px;
	}

	.banner img {
		width: 100%;
	}

	.info {
		height: 80px;
		background-image: url(../../imgs/info.png);
		font-size: 12px;
	}

	.copyrignt {
		padding-top: 55px;
		color: #808080;
	}
</style>
