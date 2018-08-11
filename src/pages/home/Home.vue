<template>
	<div>
		<home-header></home-header>	
		<home-swiper :swiperList='swiperList'></home-swiper>
		<home-icons :iconList='iconList'></home-icons>
		<home-recommend :travelList="travelList"></home-recommend>
        <home-weekend :travelList="travelList"></home-weekend>
	</div>
</template>
<script>
	import HomeHeader from './components/Header'
	import HomeSwiper from './components/Swiper'
	import HomeIcons from './components/Icons'
	import HomeRecommend from './components/Recommend'
	import HomeWeekend from './components/Weekend'
	export default{
		name:"Home",
		components:{
			HomeHeader,
			HomeSwiper,
			HomeIcons,
			HomeRecommend,
            HomeWeekend
		},
		data(){
			return{
				swiperList:[],
				iconList:[],
				travelList:[]
			}
		},
		mounted(){
	        this.$ajax.get('http://localhost:8080/api/home').then((home_data)=>{
	        	this.swiperList=home_data.data.filter((a)=>{
	        		return a.part_id==0;
	        	});
	        	this.iconList=home_data.data.filter((a)=>{
	        		return a.part_id==1;
	        	});
	        	this.travelList=home_data.data.filter((a)=>{
	        		return a.part_id==2;
	        	});
	        }).catch((res)=>{
	        	console.log(home_data)
	        })
		}
	}
</script>
<style>
	
</style>
