// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import './assets/style/reset.css'
import './assets/style/border.css'
import './assets/style/iconfont.css'
import 'swiper/dist/css/swiper.css' 
import VueAwesomeSwiper from 'vue-awesome-swiper'
import store from './store'
import fastClick from 'fastclick'
import axios from 'axios'
fastClick.attach(document.body)
Vue.use(VueAwesomeSwiper)
Vue.prototype.$ajax= axios
Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  components: { App },
  template: '<App/>'
})
