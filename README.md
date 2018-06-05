# travel

> A Vue.js project

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report
```
##运用插件
###CSS文件
*  border.css 解决移动端一边框问题
*  reset.css 重置样式
*  iconfont 使用字体图标
##node依赖包
*  fastclick 解决300毫秒延迟问题
```
    npm install fastclick --save
    import fastclick from 'fastclick'
```
*  stylus和stylus-loader css预处理
```
    npm install stylus --sava
    npm install stylus-loader --save
    <style lang="stylus"></style>
```
*  vue-awesome-swiper 首页的轮播(使用2.6.7版本)
```
    npm install vue-awesome-swiper@2.6.7 --save
    import VueAwesomeSwiper from 'vue-awesome-swiper'
    import 'swiper/dist/css/swiper.css'
```
*  axios 第三方ajax插件，可以跨平台
```
    npm install axios --save
    import axios from 'axios'
```
* better-scroll 滚动区域包
```
    npm install better-scroll --save
    import BScroll from 'better-scroll'
```

