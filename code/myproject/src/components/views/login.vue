<template>
	<div class="login">
		<div class="demo-Form col">
			<div class="icon">
				<el-avatar :size="60" src="https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png">
				</el-avatar>
			</div>
			<el-form :model="Form" :rules="rules" ref="Form" label-width="100px">
				<el-form-item label="用户名" prop="id">
					<el-input v-model="Form.id"></el-input>
				</el-form-item>
				<el-form-item label="密码" prop="pwd">
					<el-input type="password" v-model="Form.pwd"></el-input>
				</el-form-item>
				<el-form-item>
					<el-row>
						<el-col :span="24">
							<div class="grid-content">
								<el-button @click="handlelogin('Form')">登录</el-button>
							</div>
						</el-col>
						<el-col :span="24">
							<div class="grid-content">
								<el-button @click="resetForm('Form')">重置</el-button>
							</div>
						</el-col>
					</el-row>
					<el-row>
						<el-col :span="12">
							<div class="grid-content">
								<el-link type="success" @click="toReg">还未注册</el-link>
							</div>
						</el-col>
					</el-row>
				</el-form-item>
			</el-form>
		</div>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				Form: {
					id: '',
					pwd: ''
				},
				rules: {
					id: [{
						required: true,
						message: '请输入用户名',
						trigger: 'blur'
					}],
					pwd: [{
						required: true,
						message: '请输入密码',
						trigger: 'blur'
					}]
				}
			};
		},
		methods: {
			handlelogin(formName) {
				this.$refs[formName].validate((valid) => {
					if (valid) {
						this.axios.get("http://localhost:3000/users/select?username=" + this.Form.id).then(
							res => {
								console.log(res.data);
								if (res.data.code == 200) {
									var user = res.data.list[0];
									if (user.pwd == this.Form.pwd) {
										localStorage.setItem("user", JSON.stringify(user));
										this.$router.push({
											path: '/home',
										});
										this.$message({
											type: 'success',
											message: '登录成功'
										});
									} else {
										this.$message({
											type: 'error',
											message: '密码错误'
										});
									}
								} else {
									this.$message({
										type: 'error',
										message: '用户名错误'
									});
								}
							});
					} else {
						console.log('error submit!!');
						return false;
					}
				});
			},
			toReg() {
				this.$router.push('/register');
			},
			resetForm(formName) {
				this.$refs[formName].resetFields();
			}
		}
	}
</script>

<style type="text/css" scoped>
	.login {
		background-image: ;
	}

	h2 {
		margin-left: 13px;
	}

	.el-button {
		width: 100%;
		background-color: #d7cfc7;
		color: #fff;
	}

	.icon {
		margin: 70px 0px 40px 160px;
		width: 60px;
		height: 60px;
	}

	i {}

	.el-input {
		width: 80%;
		margin-left: -50px;
	}

	.el-col {
		width: 40%;
		padding: 5px;
	}

	.el-row {
		margin-left: 0px;
	}

	.el-icon-s-custom {
		font-size: 40px;
		color: #fff;
		padding: 6px;
	}
</style>
