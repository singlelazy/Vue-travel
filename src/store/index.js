import Vue from 'vue'
import Vuex from 'vuex'
import state from './state'
import mutations from './mutations'
Vue.use(Vuex)


export default new Vuex.Store({
	state,
	mutations
	/*mutations:{
		changeCity(state,city){
			state.city=city
			try{
				localStorage.city=city
			}catch(e){}
		}
	}*/
})