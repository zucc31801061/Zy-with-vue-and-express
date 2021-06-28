<template>
	<div class="productpage">
		<div class="ptopbar">
			<i class="el-icon-caret-left back" @click="back()"></i>
		</div>
		<div class="productdetail" v-for="item in this.productList" v-if="$route.params.id == item.id">
			<div class="pimg">
				<img :src="getpath(item.img)" alt="图片丢失">
			</div>
			<div class="pinfo">
				<div class="pprice">￥{{item.price}}</div>
				<div class="pname">{{item.name}}</div>
				<div class="pcontent">功效：{{item.content}}</div>
			</div>
		</div>
		<div class="ptitle">
			<i class="el-icon-coin rei"></i>
			<div class="plt">其他推荐</div>
		</div>
		<div class="precommend">
			<shop2 v-for="product in productList" v-if="$route.params.id != product.id" :key="product.id"
				:product="product"></shop2>
		</div>
		<div class="pnavbar">
			<div class="home" @click="gohome()">
				<i class="el-icon-s-home navi"></i>
				<div slot="ptitle">首页</div>
			</div>
			<div class="shop" @click="goshop()">
				<i class="el-icon-sell navi"></i>
				<div slot="ptitle">商城</div>
			</div>
			<div class="nbuy" @click="add($route.params.id)">
				<i class="el-icon-shopping-cart-2 navi bi"></i>
				加入购物车
			</div>
		</div>
		<div class="pinfo1">
			<div class="pcopyrignt">&copy; 2021 移动应用交互设计 zucc 31801061 王灵霜</div>
		</div>
	</div>
</template>

<script>
	import shop2 from '../sub/shop2.vue'

	export default {
		name: 'productpage',
		components: {
			shop2
		},
		data() {
			return {
				productList: [],
				user: null
			};
		},
		methods: {
			back() {
				this.$router.go(-1);
			},
			gohome() {
				this.$router.push('/home/')

			},
			goshop() {
				this.$router.push('/shop/')

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
		},
		created() {
			this.axios.get("http://localhost:3000/product/list").then(
				res => {
					this.productList = res.data.list;
					console.log(this.productList);
				});
			if (localStorage.getItem("user") != null) {
				this.user = JSON.parse(localStorage.getItem("user"));
				console.log(typeof(this.user));
			}
		}
	}
</script>

<style type="text/css" scoped>
	.productpage {
		background-color: #f8f8f8;
		height: 100%;
	}

	.ptopbar {
		position: fixed;
		width: 100%;
		left: 0;
		right: 0;
		top: 0;
		height: 46px;
		text-align: left;
		z-index: 5;
	}

	.pnavbar {
		position: fixed;
		width: 100%;
		left: 0;
		right: 0;
		bottom: 0;
		height: 56px;
		text-align: left;
		z-index: 5;
		background-color: #fff;
	}

	.pinfo {
		padding-top: 5px;
		padding-left: 15px;
		padding-bottom: 5px;
		background-color: #fff;
	}

	.pimg {
		background-color: #fff;
	}

	.pimg img {
		width: 100%;
	}

	.pcontent {
		padding-bottom: 10px;
	}

	.precommend {
		width: 89%;
		margin-top: 15px;
		padding: 20px;
		background-color: #fff;
		overflow-x: scroll;
		overflow-y: hidden;
		white-space: nowrap;
	}

	.ptitle {
		height: 30px;
		margin-top: 15px;
		margin-left: 15px;
		font-size: 20px;
		font-weight: 600;
		text-align: left;
		line-height: 30px;
	}

	.plt {
		margin-left: 32px;
		line-height: 30px;
		height: 30px;
	}

	.rei {
		float: left;
		color: #B6A89A;
		font-size: 30px;
	}

	.shop2 {
		display: inline-block;
		white-space: normal;
		margin-right: 10px;
		margin-bottom: 5px;
	}

	.back {
		font-size: 25px;
		padding: 7px;
		border-radius: 50%;
		margin: 10px;
		background-color: rgba(170, 170, 170, 0.4);
		color: #fff;
	}

	.pprice {
		text-align: left;
		color: red;
		font-size: 24px;
		font-weight: 700;
		margin-bottom: 5px;
	}

	.pname {
		text-align: left;
		font-weight: 500;
		margin-bottom: 5px;
	}

	.pinfo {
		text-align: left;
	}

	.pinfo1 {
		height: 80px;
		background-image: url(../../imgs/info.png);
		font-size: 12px;
		margin-bottom: 56px;
	}

	.pcopyrignt {
		padding-top: 55px;
		color: #808080;
	}

	.shop,
	.home,
	.nbuy {
		float: left;
		padding: 8px 0;
	}

	.home,
	.shop {
		padding-left: 20px;
	}

	.nbuy {
		margin-left: 113px;
		background-color: red;
		color: #fff;
		padding: 17px 18px 17px 10.5px;
	}

	.navi {
		padding: 0 5px;
		font-size: 20px;
	}

	.bi {
		color: #fff;
	}
</style>
