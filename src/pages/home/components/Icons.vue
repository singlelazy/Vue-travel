<template>
  <div class="icons">
    <swiper :options="swiperOption">
        <swiper-slide v-for="(page,index) in pages" :key="index">
            <div class="icon" v-for="item in page" :key="item.id">
                <div class="icon-img">
                  <img class="icon-img-content" :src="item.img_src">
                </div>
                <p class="icon-tit">{{item.title}}</p>
            </div>
        </swiper-slide>
    </swiper>
  </div>
</template>

<script>
  export default {
    name:"HomeIcons",
    props:{
      iconList:Array
    },
    data(){
      return {
        swiperOption:{
          autoplay:false
        }
      }
    },
    computed:{
      pages(){
        const pages=[]
        this.iconList.forEach((item,index)=>{
          const page=Math.floor(index/8)
          if(!pages[page]){
            pages[page]=[]
          }
          pages[page].push(item)
        })
        return pages
      }
    }
  }
</script>

<style lang="stylus" scoped>
  @import "~style/varibles.styl"
  @import "~style/mixins.styl"
  
  .icons
    overflow:hidden
    height:0
    padding-bottom:50%
    margin-top:.1rem
    .icon
      position:relative
      float:left
      width:25%
      height:0
      padding-bottom:25%
      .icon-img
        position:absolute
        left:0
        top:0
        right:0
        bottom:0.44rem
        text-align:center
        .icon-img-content
          height:100%
      .icon-tit
        position:absolute
        left:0
        right:0
        bottom:0
        height:0.44rem
        line-height:0.44rem
        text-align:center
        color:$darkTextColor
        ellipsis()
</style>