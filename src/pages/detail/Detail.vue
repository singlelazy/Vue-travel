<template>
  <div>
    <detail-banner 
      :sightName="sightName" 
      :bannerImg="bannerImg"
      :bannerImgs="galleryImgs"
    ></detail-banner>
    <detail-header></detail-header>
    <div class="content">
      <detail-list :list="categoryList"></detail-list>
    </div>
  </div>
</template>

<script>
  import DetailBanner from "./components/Banner"
  import DetailHeader from "./components/Header"
  import DetailList from "./components/List"
  export default{
    name:"Detail",
    components:{
      DetailBanner,
      DetailHeader,
      DetailList
    },
    data(){
      return{
        sightName:"",
        bannerImg:"",
        galleryImgs:[],
        categoryList:[]
      }
    },
    mounted(){
      this.$ajax.get('http://localhost:8080/api/detail').then((detail_data)=>{
        this.sightName=detail_data.data[0].sightName;
        this.bannerImg=detail_data.data[0].bannerImg;
        this.galleryImgs=detail_data.data[0].galleryImgs.split(",")
        this.categoryList=detail_data.data[0].categoryList.split(",")
      }).catch((res)=>{
        console.log(res)
      })
    }
  }
</script>

<style lang="stylus" scoped>
  .content
    height 50rem
</style>