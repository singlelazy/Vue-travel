<template>
    <div class="list" ref="wrapper">
      <div>
        <div class="area">
          <div class="title border-topbottom">当前城市</div>
          <div class="button-list">
            <div class="button-wrap">
              <div class="button">{{this.$store.state.city}}</div>
            </div>
          </div>
        </div>
        <div class="area">
            <div class="title border-topbottom">热门城市</div>
            <div class="button-list">
              <div 
                class="button-wrap" 
                v-for="item in hotcity"
                @click='handleCityClick(item.name)'
              > 
                <div class="button">{{item.name}}</div>
              </div>
            </div>
        </div>
        <div class="area" v-for="item in letters" :ref="item">
            <div class="title border-topbottom">
              {{item}}
            </div>
            <div class="item-list">
              <div 
              class="item border-bottom" 
              v-for='option in show'
              :key='option.id'
              @click='handleCityClick(option[item])'
              >
                {{option[item]}}
              </div>
        </div>
      </div>
    </div>
  </div>
  </template>
  
  <script>
    import BScroll from 'better-scroll'
    export default{
      name:"CityList",
      props:{
        cities:Array,
        hotcity:Array,
        letters:Array,
        letter:String
      },
      methods:{
        handleCityClick(city){
          this.$store.commit('changeCity',city)
          this.$router.push('/')
        }
      },
      computed:{
        show: function(){
          var arr=this.cities
          var letters=this.letters
          var arr2=[];
          for(let i=0; i<letters.length;i++){
            for(let j=0;j<arr.length;j++){
              if(arr[j].letter==letters[i]){
                var attr=letters[i]
                var name=arr[j].name
                arr2.push({[attr]:name})
              }
            }
          }
          return arr2;
        },
        
      },
      mounted(){
        this.scroll=new BScroll(this.$refs.wrapper)
      },
      watch:{
        letter(){
          if(this.letter){
            const element=this.$refs[this.letter][0]
            this.scroll.scrollToElement(element)
            // console.log(this.letter)
          }
        }
      }
    }
  </script>
  
  <style lang="stylus" scoped>
    @import "~style/varibles.styl"
    .border-topbottom
      &:before
        border-color:#ccc
      &:after
        border-color:#ccc
    .border-bottom
      &:before
        border-color:#ccc
    .list
        position:absolute
        top:1.59rem
        left:0
        right:0
        bottom:0
        overflow:hidden
      .title
        line-height:.54rem
        background:#eee
        padding-left:.2rem
        color:#666
        font-size:.26rem
      .button-list
        padding:.1rem .6rem .1rem .1rem
        overflow:hidden
        .button-wrap
          float:left
          width:33.33%
          .button
            margin:.1rem
            padding:.1rem 0
            text-align:center
            border:.02rem solid #ccc
            border-radius:.06rem 
      .item-list
        .item
          line-height:.76rem
          padding-left:.2rem
  </style>  