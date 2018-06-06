<template>
  <div>
    <router-link 
      tag="div" 
      to="/" 
      class="header-abs"
      v-show="showAbs"
    >
      <span class="iconfont back-icon">&#xe624;</span>         
    </router-link>
    <div 
      class="header-fixed" 
      v-show="!showAbs"
      :style="opcityStyle"
    >
      <router-link to="/">
        <div class="iconfont header-back">&#xe624;</div>
      </router-link>
      景点详情
    </div>
  </div>
</template>

<script>
export default {
  name: 'DetailHeader',
  data () {
    return {
      showAbs:true,
      opcityStyle:{
        opacity:0
      }
    }
  },
  activated(){
    window.addEventListener('scroll',this.handleScroll)
  },
  methods: {
    handleScroll(){
      const top=document.documentElement.scrollTop
      if(top>60){
        let opacity =top/140
        opacity = opacity > 1 ? 1 : opacity
        this.opcityStyle={ opacity }
        this.showAbs=false
      }else{
        this.showAbs=true
      }
    }
  }
}
</script>

<style lang='stylus' scoped>
  @import "~style/varibles.styl"
  .header-abs
    position:absolute
    left : .2rem
    top :.2rem
    width :.8rem
    height :.8rem
    line-height: .8rem
    text-align: center
    border-radius: .4rem
    background: rgba(0,0,0,.8)
    .back-icon
      color: #fff
      font-size: .4rem
  .header-fixed
    position :fixed
    top :0
    left :0
    right: 0
    height :$headerHeight
    line-height :$headerHeight
    text-align :center
    color :#fff
    background :$bgColor
    font-size:.32rem
    .header-back
      position:absolute
      top:0
      left:0
      width:.64rem
      text-align:center
      font-size:.4rem
      color:#fff
</style>
