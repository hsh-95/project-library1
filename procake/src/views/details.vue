<template>
    <div>
        <my-header></my-header>
        <div class="margin-w1210 clearfix">
            <div class="bg_img">
                <img style="display:inline-block" :src="info[0].top_pics" alt="">
            </div>  
            <div class="margin-w"></div>
            <div class="cake_title">
                <span class="title">{{info[0].title}}</span><br>
                <span class="eng_title">{{en_subtitle}}</span><br>
                <span class="intro">{{subtitle}}</span><br>
                <span class="intro">
                    <!-- <button @click="a">测试</button>     -->
                </span><br>
            </div>
            <div class="goods-info">
                <div class="preview">
                    <div>
                        <div>
                            <div class="img-position">
                                <img src="../assets/img/login/ycl.png" alt="">
                            </div>
                            <ul></ul>
                        </div>
                    </div>
                    <table width="100%" height="170px">
                        <tbody>
                            <tr>
                                <td>甜度参考:</td>
                                <td>
                                    <img src="../assets/img/login/tiandu3.png" alt="">
                                </td>
                            </tr>
                            <tr>
                                <td>蛋糕口味:</td>
                                <td>{{taste}}</td>
                            </tr>
                            <tr>
                                <td>适合人群:</td>
                                <td>{{fit_people}}</td>
                            </tr>
                            <tr>
                                <td>适合节目:</td>
                                <td>{{fit_program}}</td>
                            </tr>
                            <tr>
                                <td>酒精浓度:</td>
                                <td>{{alcohol}}</td>
                            </tr>
                            <tr>
                                <td>保管条件:</td>
                                <td>{{info[0].pre_conditions}}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="goods-detail-info">
                    <div class="guige">
                        <div class="pic"></div>
                        <div class="zhongliang">
                            <div class="choose-version">
                                <div class="dt">产品规格:</div>
                                <div class="dd catt">
                                    <ul>
                                        <div>
                                            <a href="" class="good_product cattsel">
                                                <div class="value-label">6寸</div>
                                                <input style="display:none" type="radio">
                                            </a>
                                        </div>
                                    </ul>
                                    <div class="clear"></div>
                                    <input type="hidden" name="spec_list" value="4">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="shuxing">
                        <ul class="choose choose_bor">
                            <li class="sx">
                                <table width="100%;" height="150px">
                                    <tbody>
                                        <tr>
                                            <td width="25%">尺寸</td>
                                            <td>
                                                <span class="attr_size">6寸</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>人数</td>
                                            <td>适合
                                                <span class="attr_people">4-5</span>
                                                人使用
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>餐具</td>
                                            <td>含
                                                <span class="attr_tableware">5</span>
                                                套
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>时间</td>
                                            <td>
                                                <span>最早明天10:00</span>
                                                配送
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </li>
                            <li class="choose-amout">
                                <input type="hidden" name="number" class="text" value="1">
                            </li>
                            <li class="goods-price">
                                <span>价格:</span>
                                <strong class="p-price">
                                    ￥
                                    <span class="attr_price">{{info[0].price}}</span>
                                </strong>
                            </li>
                        </ul>
                    </div>
                    <div class="buyNub-buy-wrap">
                        <div id="choose-btns1" class="buyNub-buy" style="display:none">
                            <a href="" class="tell-me">
                                <i>
                                    到货通知
                                </i>
                            </a>
                        </div>
                        <div id="choose-btns" class="buyNub-buy" style="display:block">
                            <a href="" class="u-buy1" id="add_to_card">
                                加入购物车
                            </a>
                            <a href="" class="u-buy1" name="bi_addToCart">
                                立即购买
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="show">
                <div class="goods_desc" align="center">
                    <p style="text-align:center">
                         <img src="../assets/img/details/1.jpg" alt="">
                         <img src="../assets/img/details/2.jpg" alt="">
                         <img src="../assets/img/details/3.jpg" alt="">
                    </p>
                </div> 
            </div>
        </div>
        <my-footer></my-footer>
    </div>
</template>
<style scoped>
    .clearfix{
        zoom: 1;
    }
    .margin_w1210{
        width: 1210px;
        margin: 0 auto;
        padding-top: 120px;
    }
    .bg_img img{
        width: 1210px;
        height: 500px;
        margin-top: 120px;
    }
    .cake_title {
        width: 1025px;
        position: relative;
        display: inline-block;
        margin-left: 50px;
        padding-top: 40px;
        text-align: left;
    }
    .cake_title .title {
        font-size: 32px;
        color: #492d11;
        line-height: 30px;
    }
    .img-position{
        margin-left: -240px;
        margin-bottom: 40px;
    }
    .cake_title .eng_title {
        color: #492d11;
        line-height: 30px;
    }
    .cake_title .intro {
        color: #a56720;
        line-height: 30px;
    }
    .goods-info {
        margin: -120px 0 10px 40px;
        display: inline-block;
    }
    .preview {
        z-index: 2;
        width: 430px;
        height: auto;
        /* float: left; */
        padding-top: 120px;
        /* border-top: 1px solid #bababa; */
    }
    tbody {
        display: table-row-group;
        vertical-align: middle;
        border-color: inherit;
        border-collapse: collapse;
        border-spacing: 0;
    }
    tr {
        display: table-row;
        vertical-align: inherit;
        border-color: inherit;
    }
    .preview tr td {
        font-size: 14px;
        width: 20%;
        color: #797979;
        font: 700 16px/2em 微软雅黑;
    }
    .preview tr td:last-child {
    width: 80%;
    color: #797979;
    font: 16px/2em 微软雅黑;
    text-align: left;
    }
    .preview table tr td img {
    width: 110px;
    }
    .goods-detail-info {
    /* float: left; */
    margin-top: -435px;
    margin-left: 375px;
    width: 650px;
    padding-top: 120px;
    /* border-top: 1px solid #bababa; */
    }
    .guige {
    width: 65%;
    float: left;
    }
    .guige .pic {
    width: 330px;
    height: 160px;
    overflow: hidden;
    }
    .choose-version .dt {
    margin-top: 27px;
    min-width: 55px;
    width: auto;
    float: left;
    color: #999;
    font: 700 16px/25px 微软雅黑;
    }
    .choose-version .dd {
    height: auto;
    padding-bottom: 0px;
    float: left;
    overflow: hidden;
    }
    .catt {
    float: left;
    height: auto;
    overflow: hidden;
    padding-bottom: 5px;
    margin: 15px 0 15px 5px;
    }
    ul{
    list-style: none;
    padding: 0px;
    margin: 0px;
    }
    .choose-version A {
    display: block;
    white-space: nowrap;
    text-decoration: none;
    }
    .catt .cattsel {
    color: #B0916A;
    border: 1px solid #B0916A;
    background: url(../assets/img/login/gg_sj.png) no-repeat;
    background-position: right bottom;
    }
    .catt a {
    border: #c8c9cd 1px solid;
    text-align: center;
    margin-right: 5px;
    margin-top: 6px;
    padding: 4px 10px;
    display: block;
    white-space: nowrap;
    color: #000;
    text-decoration: none;
    float: left;
    }
    .choose-version A {
    display: block;
    white-space: nowrap;
    text-decoration: none;
    }
    .catt .cattsel {
    color: #B0916A;
    border: 1px solid #B0916A;
    background: url(../assets/img/login/gg_sj.png) no-repeat;
    background-position: right bottom;
}
    .catt a {
    border: #c8c9cd 1px solid;
    text-align: center;
    margin-right: 5px;
    margin-top: 6px;
    padding: 4px 10px;
    display: block;
    white-space: nowrap;
    color: #000;
    text-decoration: none;
    float: left;
    }
    a {
    text-decoration: none;
    color: #666666;
    outline: medium none;
    text-decoration: none;
    }
    .catt a .value-label {
    padding: 3px 7px;
    }
    .clear {
    clear: both;
    }
    .clear:after {
    content: '.';
    display: block;
    height: 0;
    visibility: hidden;
    clear: both;
    }
    .shuxing {
    width: 30%;
    float: left;
    }
    .choose {
    width: 100%;
    }
    ul, ol {
    list-style: none;
    padding: 0px;
    margin: 0px;
    }
    .choose li {
    padding: 0px 0 7px 0px;
    overflow: visible;
    position: relative;
    margin-left: 5px;
    }
    table {
    border-collapse: collapse;
    border-spacing: 0;
    }
    .goods-price{
        margin-left: -60px !important;
    }
    .goods-price .mar-l .p-price {
    font: 700 24px/2em 微软雅黑;
    color: #5B4532;
    padding-right: 10px;
    padding-left: 20px;
    }
    .buyNub-buy-wrap {
    height: 40px;
    margin-top: 10px;
    }
    #choose-btns {
    float: left;
    height: 40px;
    width: 100%;
    }
    .tell-me {
    display: block;
    width: 115px;
    height: 36px;
    font-family: "微软雅黑";
    line-height: 36px;
    font-size: 15px;
    color: #fff;
    float: left;
    cursor: pointer;
    background: #B0916A;
    position: relative;
    border: 0;
    float: left;
    margin-right: 10px;
    padding-left: 25px;
    cursor: pointer;
    }
    #choose-btns .u-buy1 {
    display: block;
    width: 165px;
    height: 50px;
    line-height: 50px;
    font-size: 16px;
    color: #fff;
    float: left;
    cursor: pointer;
    background: #B0916A;
    margin-right: 15px;
    text-align: center;
    text-decoration: none;
    border: none;
    margin-top: 20px;
    }
    .show {
    width: 1100px;
    margin: 0 auto;
    }
    .goods_desc {
    padding-top: 150px;
    margin: 0 auto;
}
</style>
<script>
export default {
    data(){
        return {
            info:{},
            subtitle:'',
            en_subtitle:'',
            taste:'',
            alcohol:'',
            fit_people:'',
            fit_program:''
        }
    },
    mounted(){
        let id = this.$route.params.pid;
        this.axios.get('/article?id=' + id).then(res=>{
            this.info = res.data.results;
            let data = res.data.results;
            data.forEach(item=>{
                item.top_pics = require('../assets/img/details/deta/'+item.top_pics)
                this.info.push(item);
        });
            if(res.data.results[0].subtitle == "null"){
                this.subtitle = '';
            }else{
                this.subtitle = res.data.results[0].subtitle
            }
            if(res.data.results[0].en_subtitle == "null"){
                this.en_subtitle = '';
            }else{
                this.en_subtitle = res.data.results[0].en_subtitle
            }
            if(res.data.results[0].taste == "null"){
                this.taste = '';
            }else{
                this.taste = res.data.results[0].taste
            }
            if(res.data.results[0].alcohol == "null"){
                this.alcohol = '';
            }else{
                this.alcohol = res.data.results[0].alcohol
            }
            if(res.data.results[0].fit_people == "null"){
                this.fit_people = '';
            }else{
                this.fit_people = res.data.results[0].fit_people
            }
            if(res.data.results[0].fit_program == "null"){
                this.fit_program = '';
            }else{
                this.fit_program = res.data.results[0].fit_program
            }
        });
    }
}
</script>