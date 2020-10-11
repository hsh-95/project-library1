import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import mintUi from 'mint-ui'
import Myheader from './components/header'
import Myfooter from './components/footer'

axios.defaults.baseURL = 'http://127.0.0.1:9000'
Vue.prototype.axios = axios;
Vue.config.productionTip = false
Vue.use(mintUi);


Vue.component('my-header',Myheader)
Vue.component('my-footer',Myfooter)


Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
