<template>
	<div class="encyclopedias">
		<div class="e-item" @click="gotoDetail(encyclopedias.id)">
			<div class="e-img">
				<img :src="encyclopedias.img" alt="图片丢失">
			</div>
			<div class="info">
				<div class="e-name">{{ encyclopedias && encyclopedias.name }}</div>
				<div class="e-content">
					{{ encyclopedias.content[0].length>18?encyclopedias.content[0].substr(2, 18)+'...':encyclopedias.content[0] }}
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	export default {
		name: 'encyclopedias',
		props: {
			encyclopedias: Object
		},
		methods: {
			gotoDetail(id){
				this.$router.push('/medicinedetail/' + id)
			}
		}
	}
</script>

<style type="text/css" scoped>
	.encyclopedias {
		background-color: #fff;
		padding: 10px;
	}

	.e-img img {
		width: 120px;
		height: 120px;
		border-radius: 8px;
	}

	.e-name {
		font-size: 16px;
		font-weight: 500;
	}

	.e-content {
		width: 120px;
		padding-top: 3px;
		font-size: 12px;
		text-align: justify;
	}
</style>
