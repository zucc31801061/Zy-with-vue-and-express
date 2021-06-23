<template>
	<div class="medicinepage">
		<div class="back" @click="back()"><u>返回上一页></u></div>
		<div class="medicinedetail" v-for="item in this.medicineList" v-if="$route.params.id == item.id">
			<div class="name">{{ item && item.name }}</div>
			<div class="img">
				<img :src="item.img" alt="">
			</div>
			<div class="content">
				<p v-for="p in item.content">{{ p }}</p><br>
			</div>
		</div>
		<div class="back" @click="back()"><u>返回上一页></u></div>
		<el-backtop style="bottom: 80px;"></el-backtop>
	</div>
</template>

<script>
	import medicine_data from '../../data/encyclopedias.js';

	export default {
		name: 'medicinepage',
		data() {
			return {
				medicineList:null 
			};
		},
		methods:{
			back(){
				this.$router.go(-1);
			}
		},
		created() {
			this.medicineList = medicine_data
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
