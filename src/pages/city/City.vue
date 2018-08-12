<template>
	<div>
		<city-header></city-header>
		<city-search :cities="cities"></city-search>
		<city-list 
			:cities="cities" :hotcity="hotcity" 
			:letters="this.letters" :letter='letter'
		></city-list>
		<city-alphabet 
			:letters="this.letters" 
			@change='lettersClick'
		></city-alphabet>
	</div>
</template>
<script>
	import CityHeader from './components/Header.vue'
	import CitySearch from './components/Search'
	import CityList from './components/List'
	import CityAlphabet from './components/Alphabet.vue'
	export default{
		name:"City",
		components:{
			CityHeader,
			CitySearch,
			CityList,
			CityAlphabet
		},
		data(){
			return {
				cities:[],
				hotcity:[],
				letter:""
			}
		},
		computed:{
			letters:function(){
				return [...new Set(this.cities.map((item)=>{return item.letter}))]
			}
		},
		methods:{
			lettersClick(e){
				this.letter=e;
			}
		},
		mounted(){
			this.$ajax.get('http://localhost:8080/api/city').then((data)=>{
				this.cities=data.data.city_data;
				this.hotcity=data.data.hotcity_data;
			}).catch((res)=>{
				console.log(res)
			})
		}
	}
</script>
<style>
	
</style>