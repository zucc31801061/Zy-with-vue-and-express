<template>
	<div class="carousel">
		<el-carousel trigger="click" arrow="always">
			<el-carousel-item class="image" v-for="item in images" :key="item.id">
				<img :src="item.url" width="100%" height="100%" alt="无图片" />
			</el-carousel-item>
		</el-carousel>
	</div>
</template>

<script>
	export default {
		name: "carousel",
		data() {
			return {
				bannerH: 450,
				images: [{
						id: 1,
						url: require("@/imgs/1.jpg")
					},
					{
						id: 2,
						url: require("@/imgs/2.jpg")
					},
					{
						id: 3,
						url: require("@/imgs/3.jpg")
					},
					{
						id: 4,
						url: require("@/imgs/4.jpg")
					}
				],
			};
		},
		mounted() {
			window.addEventListener('resize', () => {
				this.setBannerH()
			}, false);
		},
		methods: {
			setBannerH() {
				this.bannerH = document.body.clientWidth / 4
			},
		}
	};
</script>

<style type="text/css" scoped>
	.el-carousel {
		overflow-x: hidden;
		overflow-y: hidden;
	}
	
	.el-carousel__container {
	    height: 200px;
	}
	
	.el-carousel__arrow {
	    height: 25px;
	    width: 25px;
	}

	.image {
		height: 200px;
	}
</style>

<style type="text/css">
	.el-carousel__container {
	    height: 200px;
	}
	
	.el-carousel__button {
	    width: 10px;
	}
</style>
