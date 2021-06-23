<template>
	<div class="shop2">
		<div @click="gotoProduct(product.id)">
			<div class="img">
				<img :src="product.img" alt="图片丢失">
			</div>
			<div class="info">
				<div class="name">{{ product && product.name }}</div>
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
		name: 'product',
		props: {
			product: Object
		},
		methods: {
			gotoProduct(id) {
				this.$router.push('/productdetail/' + id)
			}
		}
	}
</script>

<style type="text/css" scoped>
	.shop2 {
		width: 150px;
		background-color: #fff;
		padding: 10px 0px;
		box-shadow: 0px 0px 10px rgba(170, 170, 170, 0.4);
	}

	.img img {
		width: 120px;
		height: 120px;
		border-radius: 8px;
	}

	.buy {
		width: 110px;
		margin-left: 20px;
		margin-top: 5px;
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
