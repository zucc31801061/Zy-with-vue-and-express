<template>
	<div class="shop1">
		<div class="img" @click="gotoProduct(product.id)">
			<img :src="getpath(product.img)">
		</div>
		<div class="info">
			<div class="name">{{ product && product.name }}</div>
			<div class="content">功效：{{ product.content }}</div>
			<div class="buy">
				<div class="price">￥{{ product.price }}</div>
				<div class="buyicon" @click="add(product.id)">
					<i class="el-icon-shopping-cart-2"></i>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		name: 'shop1',
		props: {
			product: Object,
			user: Object
		},
		methods: {
			gotoProduct(id) {
				this.$router.push('/productdetail/' + id)
			},
			getpath(img) {
				return require('@/imgs/' + img);
			},
			add(id) {
				if (this.user != null) {
					this.axios.get("http://localhost:3000/cart/getcartid?username=" + this.user.username).then(
						res => {
							if (res.data.code == 200) {
								var cartid = res.data.list[0].id;
								this.axios.get("http://localhost:3000/cart/select?productid=" + id + "&cartid=" +
										cartid)
									.then(
										res => {
											if (res.data.code == 200) {
												//add
												this.axios.get("http://localhost:3000/cart/add?productid=" + id +
													"&cartid=" + cartid).then(
													res => {
														if (res.data.code == 200) {
															//add
															this.$message({
																type: 'success',
																message: '添加成功'
															});
														} else {
															this.$message({
																type: 'error',
																message: '添加失败'
															});
														}
													})
											} else {
												//insert
												this.axios.get("http://localhost:3000/cart/insert?productid=" + id +
													"&cartid=" + cartid).then(
													res => {
														if (res.data.code == 200) {
															//add
															this.$message({
																type: 'success',
																message: '添加成功'
															});
														} else {
															this.$message({
																type: 'error',
																message: '添加失败'
															});
														}
													})
											}
										})
							} else {
								this.$message({
									type: 'error',
									message: '您还未登录'
								});
							}
						})
				} else {
					this.$message({
						type: 'error',
						message: '您还未登录'
					});
				}
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
