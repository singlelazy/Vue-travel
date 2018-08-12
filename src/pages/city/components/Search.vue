<template>
    <div>
        <div class="search">
          <input 
            class="search-input" 
            type="text" 
            placeholder="输入城市名或拼音"
            v-model='keyword'
          >
        </div>
        <div class="search-content" ref="search" v-show="keyword" >
          <ul>
            <li 
              class="search-item border-bottom"
              v-for="item of list" 
              :key="item.id" 
              @click="handleCityClick(item)"
            >
              {{item}}
            </li>
            <li class="search-item border-bottom" v-show="hasNoData">
              没有找到匹配数据
            </li>
          </ul>
        </div>
    </div>

  </template>
  
  <script>
    import BScroll from 'better-scroll'
    import {mapMutations} from 'vuex'
    export default{
      name:"CitySearch",
      props:{
        cities:Array
      },
      data(){
        return{
          keyword:"",
          list:[]
        }
      },
      computed:{
        hasNoData(){
          return !this.list.length
        }
      },
      watch:{
        keyword(){
          if(!this.keyword){
            this.list=[]
            return 
          }
          const result= []
          for(let i in this.cities){
            if(this.cities[i].spell.indexOf(this.keyword)==0
              ||this.cities[i].name.indexOf(this.keyword)==0){
                result.push(this.cities[i].name)
              }
          }
          this.list=result
        }
      },
      methods:{
        handleCityClick(city){
          this.$store.commit('changeCity',city)
          this.$router.push('/')
        }
      },
      mounted(){
        this.scroll=new BScroll(this.$refs.search)
      }
    }
  </script>
  
  <style lang="stylus" scoped>
    @import "~style/varibles.styl"
    .search
      height:.72rem
      padding:0 .1rem
      background:$bgColor
      .search-input
        box-sizing:border-box
        width:100%
        height:.62rem
        padding:0 .1rem
        line-height:.62rem
        text-align:center
        border-radius:.06rem
        color:#666
    .search-content
      overflow:hidden
      position:absolute
      top:1.58rem
      left:0
      right:0
      bottom:0
      background:#eee
      z-index:2
      .search-item
        line-height:.62rem
        padding-left:.2rem
        color:#666
        background:#fff
    </style>  