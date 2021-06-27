<template>
	<div class="medicinepage">
		<div class="back" @click="back()"><u>返回上一页></u></div>
		<div class="medicinedetail">
			<div class="name">{{ encyclopedias && encyclopedias.name }}</div>
			<div class="img">
				<img :src="getpath(encyclopedias.img)" alt="">
			</div>
			<div class="content">
				<p v-for="p in contentList">{{ p.section }}</p><br>
			</div>
		</div>
		<div class="back" @click="back()"><u>返回上一页></u></div>
		<el-backtop style="bottom: 80px;"></el-backtop>
	</div>
</template>

<script>
	export default {
		name: 'medicinepage',
		data() {
			return {
				encyclopedias: {},
				contentList: []
			};
		},
		methods:{
			back(){
				this.$router.go(-1);
			},
			getpath(img) {
				return require('@/imgs/' + img);
			}
		},
		created() {
			this.axios.get("http://localhost:3000/encyclopedia/select?id="+this.$route.params.id).then(
				res => {
					this.encyclopedias = res.data.list[0];
					console.log(this.encyclopedias);
				});
			this.axios.get("http://localhost:3000/encyclopedia/detail?id="+this.$route.params.id).then(
				res => {
					this.contentList = res.data.list;
					console.log(this.contentList);
				});
		}
	}
</script>

<style type="text/css" scoped>
	p {
		text-align: justify;
		text-justify: inter-ideograph;
	}

	.medicinepage {
		background-color: #e6edf2;
	}

	.medicinedetail {
		width: 310px;
		padding: 20px 25px 0px 25px;
		background-color: #fff;
	}
	
	.name{
		width: 280px;
		margin-left: 15px;
		margin-bottom: 15px;
		font-size: 20px;
		font-weight: 600;
	}

	.img {
		width: 280px;
		font-size: 20px;
		font-weight: 600;
	}

	.img img {
		width: 310px;
		border-radius: 10px;
	}
	
	.back{
		text-align: right;
		padding-top: 10px;
		padding-right: 25px;
		padding-bottom: 10px;
		background-color: #fff;
		color: royalblue;
	}
</style>
