<template>
    <div>
      <div class="title">
        周末去哪儿
      </div>  
      <ul>
        <li class="item" v-for="item in travelList" :key="item.id">
          <div class="item-img-wrap">
            <img class="item-img" :src="item.img_src" alt="">
          </div> 
          <div class="item-info border-bottom">
            <p class="item-tit">{{item.title}}</p>
            <p class="item-desc">{{item.sub_title}}</p>
          </div>
        </li>
      </ul>
    </div>
  </template>
  
  <script>
    export default{
      name:"HomeWeekend",
      props:{
        travelList:Array
      }
    }
  </script>
  
  <style lang="stylus" scoped>
    @import '~style/mixins.styl'
    .title
      line-height:.8rem
      background:#eee
      text-indent:.2rem
    .item-img-wrap
      overflow:hidden
      height:0
      padding-bottom:37.09%
      .item-img
        width:100%
    .item-info
      padding:.1rem
      .item-title
        line-height:.54rem
        font-size:.32rem
        ellipsis()
      .item-desc
        line-height:.4rem
        color:#ccc
        ellipsis()
  </style>