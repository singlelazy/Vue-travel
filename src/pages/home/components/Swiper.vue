<template>
  <div class="wrap">
      <swiper :options="swiperOption" v-if="showSwiper">
          <!-- slides -->
          <swiper-slide v-for="item in swiperList" :key="item.id">
            <img class="swiper-img" :src="item.img_src" >
          </swiper-slide>
          <!-- Optional controls -->
          <div class="swiper-pagination"  slot="pagination"></div>
        </swiper>

  </div>
</template>
<script>
export default {
  name:'HomeSwiper',
  props:{
    swiperList:Array
  },
  data(){
    return{
      swiperOption:{
        pagination:{
          el:".swiper-pagination",
          clickable:true
        },
        loop:true,
      }
    }
  },
  computed:{
    showSwiper(){
      return Boolean(this.swiperList.length)
    }
  }
}
</script>
<style lang="stylus" scoped>
  .wrap >>> .swiper-pagination-bullet-active
    background:#fff
  .wrap
    overflow:hidden
    width:100%
    height:0
    padding-bottom:26.7%
    background:#eee
    .swiper-img 
      width:100%
</style>