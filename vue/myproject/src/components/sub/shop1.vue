<template>
	<div class="shop1">
		<div @click="gotoProduct(product.id)">
			<div class="img">
				<img :src="getpath(product.img)">
			</div>
			<div class="info">
				<div class="name">{{ product && product.name }}</div>
				<div class="content">功效：{{ product.content }}</div>
				<div class="buy">
					<div class="price">￥{{ product.price }}</div>
					<div class="buyicon">
						<i class="el-icon-shopping-cart-2"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		name: 'shop1',
		props: {
			product: Object
		},
		methods: {
			gotoProduct(id) {
				this.$router.push('/productdetail/' + id)
			},
			getpath(img) {
				return require('@/imgs/' + img);
			}
		}
	}
</script>

<style type="text/css" scoped>
	.shop1 {
		width: 89%;
		height: 100px;
		padding: 12px 20px;
		margin-top: 10px;
		background-color: #fff;
	}

	.img {
		float: left;
	}

	.img img {
		width: 150px;
		height: 100px;
		border-radius: 5px;
	}

	.info {
		margin-left: 160px;
	}

	.name {
		width: 80px;
		margin-left: 45px;
		font-size: 16px;
		font-weight: 500;
		border-top: 1px solid #cccccc;
		border-bottom: 1px solid #cccccc;
		color: #4b4b4b;
	}

	.content {
		width: 148px;
		height: 35px;
		text-align: justify;
		margin-top: 10px;
		margin-left: 12px;
		font-size: 12px;
		color: #b6b6b6;
	}

	.buy {
		width: 110px;
		margin-left: 50px;
		margin-top: 10px;
		border: 1px solid red;
		border-radius: 15px;
		text-align: justify;
	}

	.price {
		width: 70px;
		margin-left: 5px;
		color: red;
		float: left;
	}

	.buyicon {
		background-color: red;
		margin-left: 70px;
		width: 40px;
		border-radius: 0px 15px 15px 0px;
	}

	.el-icon-shopping-cart-2 {
		color: #fff;
		padding-left: 5px;
	}
</style>
