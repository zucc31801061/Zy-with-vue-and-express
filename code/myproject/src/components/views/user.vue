<template>
	<div class="user">
		<div class="nowlogin" @click="tologin()">
			<div class="icon">
				<el-avatar :size="60" src="https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png">
				</el-avatar>
			</div>
			<div class="name" v-if="this.username=='初始'">还未登录</div>
			<div class="name" v-if="this.username!='初始'">{{username}}</div>
		</div>
		<div class="model">
			<div class="item">
				<i class="el-icon-tickets micon"></i>
				<span>我的信息</span>
			</div>
			<div class="item">
				<i class="el-icon-truck micon"></i>
				<span>我的订单</span>
			</div>
			<div class="item">
				<i class="el-icon-shopping-cart-1 micon"></i>
				<span>购物车</span>
			</div>
			<div class="item">
				<i class="el-icon-office-building micon"></i>
				<span>我的地址</span>
			</div>
		</div>
		<div class="info">
			<div class="copyrignt">&copy; 2021 移动应用交互设计 zucc 31801061 王灵霜</div>
		</div>
	</div>
</template>

<script>
	export default {
		name: "user",
		props: {
			username: String
		},
		data() {
			return {

			};
		},
		methods: {
			tologin() {
				this.$router.push('/login')
			},
		}
	}
</script>

<style type="text/css" scoped>
	.user {
		background-color: #f8f8f8;
	}

	.nowlogin {
		height: 80px;
		padding-top: 40px;
		margin-left: 10%;
	}

	.icon {
		float: left;
	}

	.name {
		text-align: left;
		margin-top: 15px;
		margin-left: 80px;
		font-size: 20px;
	}

	.model {
		display: inline-block;
		padding: 20px 15px 20px 15px;
		background-color: #fff;
		margin-top: 10px;
		border-radius: 10px;
		width: 80%;
	}

	.item {
		float: left;
		width: 20%;
		padding: 0 2.5%;
		text-align: center;
	}

	.micon {
		width: 40px;
		font-size: 35px;
		color: #B6A89A;
		padding: 8px;
	}

	.item span {
		font-size: 14px;
		width: 100%;
	}

	.info {
		width: 100%;
		margin-top: 136px;
		height: 80px;
		background-image: url(../../imgs/info.png);
		font-size: 12px;
	}

	.copyrignt {
		padding-top: 55px;
		color: #808080;
	}
</style>
