<template>
	<div class="user">
		<div class="nowlogin">
			<el-upload class="avatar-uploader icon" action="https://jsonplaceholder.typicode.com/posts/"
				:show-file-list="false" :on-success="handleAvatarSuccess" :before-upload="beforeAvatarUpload">
				<img v-if="imageUrl" :src="imageUrl" class="avatar">
				<i v-else class="el-icon-plus avatar-uploader-icon"></i>
			</el-upload>
			<div class="name" v-if="this.user==null" @click="tologin()">还未登录</div>
			<div class="name" v-if="this.user!=null" @click="tologin()">{{user.realname}}</div>
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
			user: Object
		},
		data() {
			return {
				imageUrl: 'https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png',
			};
		},
		methods: {
			tologin() {
				this.$router.push('/login')
			},
			handleAvatarSuccess(res, file) {
				this.imageUrl = URL.createObjectURL(file.raw);
			},
			beforeAvatarUpload(file) {
				const isJPG = file.type === 'image/jpeg' || file.type === 'image/png';
				const isLt2M = file.size / 1024 / 1024 < 2;

				if (!isJPG) {
					this.$message.error('上传头像图片只能是 JPG 或 PNG 格式!');
				}
				if (!isLt2M) {
					this.$message.error('上传头像图片大小不能超过 2MB!');
				}
				let fd = new FormData();
				fd.append("file", file);
				this.axios.post("http://localhost:3000/users/editUserImg?username=" + this.user.username, fd).then(
					res => {
						this.imageUrl = res.data.url;
						console.log(this.imageUrl);
						this.axios.get("http://localhost:3000/users/select?username=" + this.user.username).then(
							res => {
								console.log(res.data);
								if (res.data.code == 200) {
									var usernew = res.data.list[0];
									localStorage.setItem("user", JSON.stringify(usernew));
									console.log(localStorage.getItem("user"));
								}
							});
					});
			}
		},
		mounted() {
			console.log(this.user.headimg);
			this.imageUrl = this.user.headimg;
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

	.icon img {
		width: 60px;
		height: 60px;
		border-radius: 50%;
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
		margin-top: 260px;
		height: 80px;
		background-image: url(../../imgs/info.png);
		font-size: 12px;
	}

	.copyrignt {
		padding-top: 55px;
		color: #808080;
	}
</style>
