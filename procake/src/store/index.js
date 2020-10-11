import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    islogin:localStorage.getItem('islogin') ? localStorage.getItem('islogin') : 0,
    user_name: '' || localStorage.getItem('user_name')
  },
  getters:{
    userName: (state) => state.user_name
  },
  mutations: {
    handleUserName: (state, user_name) => {
      state.user_name = user_name
          // 把登录的用户的名保存到localStorage中，防止页面刷新，导致vuex重新启动，用户名就成为初始值（初始值为空）的情况
      localStorage.setItem('user_name', user_name)
  }
  },
  actions: {
  },
  modules: {
  }
})
