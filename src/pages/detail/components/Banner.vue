<template>
  <div>
    <div class="banner" @click="handleBannerClick">
      <img class="banner-img" src="//img1.qunarzz.com/sight/p0/1507/f0/45ad118808cbfbdd1ca292f6939bdda5.water.jpg_600x330_0ac4cfae.jpg" alt="">
      <div class="banner-info">
        <div class="banner-title">
          长影世纪城(AAAAA景区)
        </div>
        <div class="banner-number">
          <span class="iconfont banner-icon">&#xe60a;</span>28
        </div>
      </div>
    </div>
    <common-gallery 
      :imgs="imgs" 
      v-show="showGallery"
      @close="handleGalleryClose"
    ></common-gallery>   
  </div>
</template>

<script>
import CommonGallery from 'common/gallery/Gallery'
export default {
  name: 'DetailBanner',
  data(){
    return{
      showGallery:false,
      imgs:["http://img1.qunarzz.com/sight/p0/1709/18/18e87eb15b995260a3.img.png_r_800x800_dd836063.png",
      "http://img1.qunarzz.com/sight/p0/1409/24/f1d8aea674a892713286feaae6686110.jpg_r_800x800_bfb1c7dc.jpg"]
    }
  },
  components:{
    CommonGallery
  },
  methods:{
    handleBannerClick(){
      this.showGallery=true 
    },
    handleGalleryClose(){
      this.showGallery=false
    }
  }
}
</script>

<style lang='stylus' scoped>
  .banner
    overflow:hidden
    height:0
    padding-bottom 55%
    position : relative    
    .banner-img
      width: 100%
    .banner-info
      display :flex
      position:absolute
      left :0
      right :0
      bottom :0
      line-height :.6rem
      color:#fff
      background-image:linear-gradient(top,rgba(0,0,0,0),rgba(0,0,0,.8))
      .banner-title
        flex:1
        font-size: .32rem
        padding: 0 .2rem
      .banner-number
        margin-top :.14rem
        padding:0 .4rem
        line-height :.32rem
        height :.32rem
        border-radius:.2rem
        font-size:.24rem
        background:rgba(0,0,0,.8 )
      .banner-icon
        font-size: .24rem

</style>
