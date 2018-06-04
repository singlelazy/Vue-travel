<template>
  <div class="icons">
    <swiper>
        <swiper-slide v-for="(page,index) in pages" :key="index">
            <div class="icon" v-for="item in page" :key="item.id">
                <div class="icon-img">
                  <img class="icon-img-content" :src="item.src">
                </div>
                <p class="icon-tit">{{item.tit}}</p>
            </div>
        </swiper-slide>
    </swiper>
  </div>
</template>

<script>
  export default {
    name:"HomeIcons",
    data(){
      return{
        iconList:[{
          id:"001",
          src:"http://img1.qunarzz.com/piao/fusion/1803/95/f3dd6c383aeb3b02.png",
          tit:"景点门票"
        },{
          id:"002",
          src:"http://img1.qunarzz.com/piao/fusion/1804/ff/fdf170ee89594b02.png",
          tit:"必游清单"
        },{
          id:"003",
          src:'http://img1.qunarzz.com/piao/fusion/1803/bd/9f7b9b2b60c1502.png',
          tit:"踏青赏花"
        },{
          id:"004",
          src:"http://img1.qunarzz.com/piao/fusion/1804/5a/13ceb38dcf262f02.png",
          tit:"一日游"
        },{
          id:"005",
          src:"http://img1.qunarzz.com/piao/fusion/1803/76/eb88861d78fb9902.png",
          tit:"动植物园"
        },{
          id:'006',
          src:"http://img1.qunarzz.com/piao/fusion/1803/6c/9e54a8540fee0102.png",
          tit:"故宫"
        },{
          id:"007",
          src:"http://img1.qunarzz.com/piao/fusion/1803/47/c2b659e048b11602.png",
          tit:"主题乐园"
        },{
          id:'008',
          src:"http://img1.qunarzz.com/piao/fusion/1804/ed/cf572be30fc32f02.png",
          tit:"Q+精选"
        },{
          id:'009',
          src:"http://img1.qunarzz.com/piao/fusion/1803/e3/67df61427c8e1302.png",
          tit:"演出"
        },{
          id:'010',
          src:"http://img1.qunarzz.com/piao/fusion/1803/96/c70f1e85ae4a4f02.png",
          tit:"自然风光"
        },{
          id:'011',
          src:"http://img1.qunarzz.com/piao/fusion/1803/20/831d62d2e1c7be02.png",
          tit:"名胜古迹"
        },{
          id:'012',
          src:"http://img1.qunarzz.com/piao/fusion/1803/dd/cce1231836f10a02.png",
          tit:"周边游"
        },{
          id:'013',
          src:"http://img1.qunarzz.com/piao/fusion/1803/b6/37560ece9c62b502.png",
          tit:"城市风光"
        },{
          id:'014',
          src:"http://img1.qunarzz.com/piao/fusion/1803/95/8246f27355943202.png",
          tit:"游乐场"
        }]
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