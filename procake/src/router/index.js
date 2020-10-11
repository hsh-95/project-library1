import Vue from 'vue'
import VueRouter from 'vue-router'
import UserLogin from '../views/userlogin'
import PhoneLogin from '../views/phone'
import Rgister from '../views/register'
import CakeHeader from '../components/header.vue'
import Foot from '../components/footer'
import index from '../views/index'
import Details from '../views/details'
// import Carousel from '../views/Carousel'
import List from '../views/list'

Vue.use(VueRouter)

const routes = [
  {
    path:'/list',
    component:List
  },
  // {
  //   path:'/carousel',
  //   component:Carousel
  // },
  {
    path:'/details/:pid',
    component:Details
  },
  {
    path:'/',
    component:index
  },
  {
    path:'/foot',
    component:Foot
  },
  // {
  //   path:'/index',
  //   component:CakeHeader
  // },
  {
    path:'/register',
    component:Rgister
  },
  {
    path:'/phonelogin',
    component:PhoneLogin
  },
  {
    path:'/userlogin',
    component:UserLogin
  },
  // {
  //   path: '/',
  //   component: () => import(/* webpackChunkName: "about" */ '../views/userlogin.vue')
  // }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})
export default router
