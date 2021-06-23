<template>
	<div class="index">
		<topbar :username="username"></topbar>
		<el-main>
			<router-view :key="$route.fullPath" :username="username">
			</router-view>
		</el-main>
		<navbar></navbar>
	</div>
</template>

<script>
	import navbar from './sub/navbar.vue'
	import topbar from './sub/topbar.vue'

	export default {
		name: "Index",
		components: {
			navbar,
			topbar
		},
		data() {
			return {
				username: '初始'
			};
		},
		methods: {

		},
		watch: {
			$route: function(newVal, oldVal) {
				if (localStorage.getItem("username") != null) {
					this.username = localStorage.getItem("username");
				}
				document.documentElement.scrollTop = 0;
				document.body.scrollTop = 0;
			}
		}
	};
</script>

<style type="text/css">
	html,
	body {
		height: 100%;
		margin: 0px;
	}

	.el-main {
		padding: 0px;
		margin-top: 45px;
		margin-bottom: 54px;
		height: 100%;
	}

	.router-view {
		overflow: scroll;
		height: 100%;
	}
	
	.index{
		overflow: hidden;
	}
</style>
