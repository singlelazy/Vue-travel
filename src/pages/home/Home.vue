<template>
	<div>
		<p>header</p>
	</div>
</template>
<script>
	export default{
		name:"Home",
		mounted:function(){
	        this.$ajax.get('http://localhost:8080/api/goods').then((res)=>{
	        	console.log(res)
	        }).catch((res)=>{
	        	console.log(res)
	        })
		}
	}
</script>
<style>
	
</style>
