<template>
<div>
  <my-header></my-header>
  <div class="banner">
    <swiper class="swiper" :options="swiperOption" >
    <swiper-slide v-for="(v,i) of imags" :key="i">
      <img :src="v.img" alt=""/>
    </swiper-slide>
    <div class="swiper-pagination" slot="pagination"></div>
    <div class="swiper-button-prev" slot="button-prev"></div>
    <div class="swiper-button-next" slot="button-next"></div>
  </swiper>


  </div>
  <div class="index_title">
      <div class="title">
        <h3>
          <span>新品专区</span>
        </h3>
      </div>
    </div>
    <div class="new_list_wrap">
      <div class="list">
        <div class="item" v-for="(v,i) of products" :key="i">
          <router-link :to="`/details/${v.pid}`" class="pic">
            <img :src="v.pic" alt="">
          </router-link>
          <router-link to="/details" class="a_list">
            <h3 style="z-index:50">{{v.title}}</h3>
          </router-link>
          
          <p>
            <span class="price">{{v.price}}</span>
          </p>
          <p>
            <router-link to="/details" class="clear">
              <img src="../../public/img/login/car.png" class="add_car">
            </router-link>
          </p>
        </div>
      </div>
    </div>
    <my-footer></my-footer>
  <router-view/> 
</div>  
</template>

<script>
import { Swiper, SwiperSlide } from "vue-awesome-swiper";
import "swiper/css/swiper.css";
export default {
  name: "swiper-example-autoplay",
  title: "Autoplay",
  components: {
    Swiper,
    SwiperSlide,
  },
  data(){
    return {
      swiperOption: {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 1000,
          disableOnInteraction: false,
        },
        loop: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        effect: "fade",
        fadeEffect: {
          crossFade: true,
        },
        speed: 3000,
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      },
      innerWidth:window.innerWidth,
      ulClass:{ hasTrans:true },
      i:0,
      imags:[],
      products:[],
      canClick:true,
      timer:null
    }
  },
  created(){
    window.addEventListener("resize",()=>{
      this.innerWidth=window.innerWidth;
    })
    this.start();
  },
  mounted(){
    this.axios.get('/carousel').then(results=>{
      let data = results.data.results;
      data.forEach(item=>{
          item.img = require('../assets/img/carousel/'+item.img)
          this.imags.push(item);
        });
  });
  this.axios.get('/product').then(results1=>{
      let data = results1.data.results;
      data.forEach(item1=>{
          item1.pic = require('../assets/img/product/'+item1.pic)
          this.products.push(item1);
        });
     });
  }
}
</script>

<style scoped>
*{
  padding: 0;
  margin: 0;
}
.swiper{
  height: 100%;
}
.banner{
  margin-top: 120px;
  min-width: 1260px;
}
  .index_title{
    position: relative;;
    height: 80px;
    padding-top: 50px;
    margin-left: 10px;
    width: 1280px;
  }
  .index_title>.title{
    margin-top: -15px;
    margin-left: 80px;
    width: 200px;
    z-index: 50;
  } 
  .title>h3>span{
    font-weight: bold;
    color: black;
    font-size: 26px;
   margin-left: -120px;
  }
  .new_list_wrap {
    width: 1260px;
    height: 870px;
    margin: 0 auto;
    position: relative;
    border-bottom: 1px solid #d6d6d6;
  }
  .item {
    width: 374px;
    height: 395px;
    margin-bottom: 9px;
    float: left;
    margin-right: 40px;
    /* padding-top: 30px;
    padding-left: 40px; */
  }
  .item>.pic>img{
    width: 374px;
    height: 395px;
    float: left;
    z-index: 1;
  }
  .item .a_list {
    display: block;
    padding-bottom: 270px;
    color: #666666;
    outline: medium none;
    text-decoration: none;
    z-index: 50;
    float: left;
  }
  .item h3 {
    font-size: 15px;
    color: #000;
    margin-bottom: 8px;
    margin-top: -370px;
    margin-left:33px;
    /* margin-left: -210px; */
  }
  .item p {
    height: 50px;
    /* line-height: 42px; */
    /* float: left; */
    display: flex;
    margin-right: 100px;
  }
  .price {
    font-weight: bold;
    color: #E31939;
    font-size: 18px;
    /* float: left; */
    clear: both;
    position: relative;
    bottom: -336px; 
    left: -303px;
  }
  .clear{
    color: #666666;
    outline: medium none;
    text-decoration: none;
  }
  .add_car{
    position: relative;
    margin-left: -110px;
    margin-top: 284px;
  }
  
</style>