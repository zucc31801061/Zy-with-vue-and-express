<template>
	<div class="register">
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
				<el-form-item label="确认密码" prop="cfpwd">
					<el-input type="password" v-model="Form.cfpwd"></el-input>
				</el-form-item>
				<el-form-item>
					<el-row>
						<el-col :span="24">
							<div class="grid-content">
								<el-button @click="handleregister('Form')">注册</el-button>
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
								<el-link type="success" @click="toLog">我要登录</el-link>
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
			var validatePassword = (rule, value, callback) => {
				if (value != this.Form.pwd) {
					callback(new Error('确认密码有误'));
				} else {
					callback();
				}
			}
			return {
				Form: {
					id: '',
					pwd: '',
					cfpwd: ''
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
					}],
					cfpwd: [{
						required: true,
						validator: validatePassword,
						trigger: 'blur'
					}]
				}
			};
		},
		methods: {
			handleregister(formName) {
				this.$refs[formName].validate((valid) => {
					if (valid) {
						this.axios.get("http://localhost:3000/users/register?username="+this.Form.id+"&pwd="+this.Form.pwd).then(
							res => {
								if(res.data.code==200){
									this.$message({
										type: 'success',
										message: res.data.msg
									});
								}
								else{
									this.$message({
										type: 'error',
										message: res.data.msg
									});
								}
							});
					} else {
						console.log('error submit!!');
						return false;
					}
				});
			},
			toLog() {
				this.$router.push('/login');
			},
			resetForm(formName) {
				this.$refs[formName].resetFields();
			}
		}
	}
</script>

<style type="text/css" scoped>
	.register {
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
