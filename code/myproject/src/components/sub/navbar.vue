<template>
	<div class="navbar">
		<el-row>
			<el-menu :default-active="this.$route.path" class="el-menu-vertical-demo" router>
				<el-col :span="6">
					<el-menu-item index="/Home">
						<i class="el-icon-s-home"></i>
						<div slot="title">首页</div>
					</el-menu-item>
				</el-col>
				<el-col :span="6">
					<el-menu-item index="/News">
						<i class="el-icon-news"></i>
						<div slot="title">资讯</div>
					</el-menu-item>
				</el-col>
				<el-col :span="6">
					<el-menu-item index="/Shop">
						<i class="el-icon-sell"></i>
						<div slot="title">商城</div>
					</el-menu-item>
				</el-col>
				<el-col :span="6">
					<el-menu-item index="/User">
						<i class="el-icon-s-custom"></i>
						<div slot="title">我的</div>
					</el-menu-item>
				</el-col>
			</el-menu>
		</el-row>
	</div>
</template>

<script>
	export default {
		name: "navbar",
		data() {
			return {};
		}
	}
</script>

<style type="text/css" scoped>
	.navbar {
		position: fixed;
		width: 100%;
		left: 0;
		right: 0;
		bottom: 0;
		background: #a98175;
		height: 56px;
		border-top: 1px solid #f2f2f2;
	}
	
	.el-menu {
	    border-right: none;
	}

	.el-menu-item [class^=el-icon-] {
		font-size: 20px;
	}
	
	.el-menu-item:focus, .el-menu-item:hover {
		background-color: rgba(255, 255, 255, 0.1);
	}
	
	.el-menu-item{
		line-height: 30px;
	}
	
	.el-menu-item.is-active {
	    color: #b6a89a;
	}
</style>
