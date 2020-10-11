<template>
    <div>
        <my-header></my-header>
        <div class="cake_list">
            <div class="cake_box">
                <div class="cake_category">
                    <ul>
                        <li>
                            <span>使用场景  |</span>
                        </li>
                        <li>
                            <p>全部</p>
                        </li>
                        <li>
                            <p>情侣</p>
                        </li>
                        <li>
                            <p>儿童</p>
                        </li>
                        <li>
                            <p>聚会</p>
                        </li>
                        <li>
                            <p>长辈</p>
                        </li>
                        <li>
                            <p>生日</p>
                        </li>
                    </ul>
                </div>
                <div class="cake_category">
                    <ul>
                        <li>
                            <span>蛋糕口味  |</span>
                        </li>
                        <li>
                            <p>全部</p>
                        </li>
                        <li>
                            <p>水果</p>
                        </li>
                        <li>
                            <p>咖啡</p>
                        </li>
                        <li>
                            <p>坚果</p>
                        </li>
                        <li>
                            <p>巧克力</p>
                        </li>
                        <li>
                            <p>慕斯</p>
                        </li>
                        <li>
                            <p>奶油</p>
                        </li>
                        <li>
                            <p>金典</p>
                        </li>
                        <li>
                            <p>拿破仑</p>
                        </li>
                        <li>
                            <p>低糖</p>
                        </li>
                        <li>
                            <p>芝士</p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="cake_list1">
                <div class="cake_list1_item" v-for="(v,i) of info" :key="i">
                    <div class="cake_list1_item_img">
                        <img :src="v.list_pics" alt="">
                    </div>
                    <div class="cake_list1_item_content">
                        <div class="cake_list1_item_content1">
                            <span>{{v.title}}</span>
                        </div>
                        <div class="cake_list1_item_content2">
                            <span>{{v.subtitle}}</span>
                        </div>
                        <div class="cake_list1_item_content2 description_en">
                            <span>{{en_subtitle}}</span>
                        </div>
                        <div class="cake_list1_item_content2">
                            <span></span>
                        </div>
                    </div>
                    <div class="cake_list1_item_btn">
                        <span class="price">￥{{v.price}}.00</span>
                    </div>
                    <div class="dis_btn">
                        <div class="dis_btn_item">
                            <router-link to="">查看详情</router-link>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <my-footer></my-footer>
    </div>
</template>
<style scoped>
.cake_list {
    width: 1100px;
    margin: 0 auto;
    padding-top: 120px;
}
.cake_box {
    padding: 20px;
    background: #fafafa;
}
.cake_list .cake_list1 {
    width: 1100px;
    clear: both;
}
.cake_category {
    clear: both;
    padding-top: 10px;
}
.cake_category ul {
    height: 30px;
    clear: both;
}
.cake_category ul li:first-child {
    margin-right: 26px;
}
.cake_category ul li span {
    font-weight: 600;
    color: #73716e;
}
.cake_category ul li {
    list-style-type: none;
    float: left;
}
.cake_category ul li p {
    text-decoration: none;
    margin-left: 10px;
    padding: 0px 8px;
    margin: 0 5px;
    display: inline-block;
    line-height: 20px;
}
a {
    text-decoration: none;
    color: #666666;
    outline: medium none;
    text-decoration: none;
}
.cake_list .cake_list1 {
    width: 1100px;
    clear: both;
}
.cake_list .cake_list1 .cake_list1_item {
    height: 280px;
    background: url(../assets/cake_list_bg.png) no-repeat;
    clear: both;
    margin-top: 10px;
}
.cake_list1_item {
    margin-bottom: 3px;
}
.cake_list .cake_list1 .cake_list1_item .cake_list1_item_img {
    width: 300px;
    float: left;
}
.cake_list1_item_img {
    margin-right: 20px;
}
.cake_list1_item_img img {
    width: 100%;
    height: 280px;
    padding-top: 4px;
}
.cake_list .cake_list1 .cake_list1_item .cake_list1_item_content {
    width: 36%;
    float: left;
    line-height: 25px;
    padding-top: 50px;
}
.cake_list .cake_list1 .cake_list1_item .cake_list1_item_content1 {
    width: 550px;
    float: left;
    padding-bottom: 30px;
    text-align: left;
}
.cake_list1_item_content1 span {
    font-size: 16px;
    color: #6c6161;
}
.cake_list .cake_list1 .cake_list1_item .cake_list1_item_content2 {
    width: 360px;
    float: left;
    text-align: left;
}
.cake_list1_item_content2 span {
    font-size: 14px;
    color: #9b9595;
    font-family: 宋体;
}
.description_en {
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
}
.cake_list .cake_list1 .cake_list1_item .cake_list1_item_btn {
    width: 200px;
    float: left;
    text-align: center;
    font-family: 宋体;
}
.cake_list .cake_list1 .cake_list1_item .cake_list1_item_btn span {
    font-size: 16px;
    color: #6c6161;
    font-family: 宋体;
}
.price {
    display: block;
    line-height: 275px;
    overflow: hidden;
    font-weight: bold;
    float: left;
    position: relative;
}
.dis_btn {
    height: 280px;
    background: #fdf7f2;
    width: 180px;
    float: left;
    cursor: pointer;
}
.dis_btn .dis_btn_item {
    width: 100%;
    height: 60px;
    text-align: center;
    margin-top: 80px;
}
.dis_btn .dis_btn_item a {
    text-decoration: none;
    line-height: 60px;
    font-size: 16px;
    font-weight: bold;
}
</style>
<script>
export default {
    data(){
        return {
            info:{},
            subtitle:'',
            en_subtitle:''
        }
    },
    mounted(){
        this.axios.get('/list').then(res=>{
            this.info = res.data.results;
            let data = res.data.results;
            data.forEach(item=>{
                item.list_pics = require('../assets/img/list/'+item.list_pics)
                this.info.push(item);
        });
            if(res.data.results.subtitle == "null"){
                this.subtitle = '';
            }else{
                this.subtitle = res.data.results.subtitle
            }
            if(res.data.results.en_subtitle == "null"){
                this.en_subtitle = '';
            }else{
                this.en_subtitle = res.data.results.en_subtitle
            }
        });
    }
}
</script>