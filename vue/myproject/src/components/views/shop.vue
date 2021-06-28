<template>
	<div class="shop">
		<div class="myinput">
			<el-input placeholder="请输入内容">
				<template #append>
					<el-button icon="el-icon-search"></el-button>
				</template>
			</el-input>
		</div>
		<div class="title-1">
			<i class="el-icon-s-marketing rmi"></i>
			<div class="lt">热卖中</div>
		</div>
		<div class="recommend">
			<shop1 v-for="product in productList.slice(0,2)" :key="product.id" :product="product" :user="user"></shop1>
		</div>
		<div class="title-1">
			<i class="el-icon-s-cooperation ai"></i>
			<div class="lt">所有商品</div>
		</div>
		<div class="all">
			<shop2 v-for="product in productList.slice(2)" :key="product.id" :product="product" :user="user"></shop2>
		</div>
		<div class="info">
			<div class="copyrignt">&copy; 2021 移动应用交互设计 zucc 31801061 王灵霜</div>
		</div>
		<el-backtop style="bottom: 80px;"></el-backtop>
	</div>
</template>

<script>
	import shop1 from '../sub/shop1.vue'
	import shop2 from '../sub/shop2.vue'

	export default {
		name: 'shop',
		components: {
			shop1,
			shop2
		},
		props: {
			user: Object
		},
		data() {
			return {
				productList: []
			};
		},
		methods: {
			
		},
		created() {
			this.axios.get("http://localhost:3000/product/list").then(
				res => {
					this.productList = res.data.list;
					console.log(this.productList);
				})
		}
	}
</script>

<style type="text/css" scoped>
	.shop {
		background-color: #f8f8f8;
	}

	.myinput {
		width: 89%;
		padding: 15px 20px;
		background-color: #fff;
	}

	.recommend {
		margin-top: 15px;
	}

	.title-1 {
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
	
	.ai {
		float: left;
		color: yellowgreen;
		font-size: 30px;
	}

	.lt {
		margin-left: 32px;
		line-height: 30px;
		height: 30px;
	}

	.info {
		height: 80px;
		background-image: url(../../imgs/info.png);
		font-size: 12px;
		text-align: ;
	}

	.all {
		display: grid;
		grid-gap: 18px;
		margin-top: 15px;
		padding: 20px 18px 20px 22px;
		grid-template-columns: repeat(2, 1fr);
		background-color: #fff;
	}

	.shop2 {
		float: left;
	}

	.copyrignt {
		padding-top: 55px;
		color: #808080;
	}
</style>
