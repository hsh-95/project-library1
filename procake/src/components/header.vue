


    <template>
    <div>
        <div class="header">
            <div class="header_left">
                <div class="logo">
                    <router-link to="/">
                        <img src="../../public/img/login/logo1.png" alt="">
                    </router-link>
                </div>
                <div class="location">
                    <router-link to="" class="location_a">
                        <img src="../assets/4.png" alt="">
                        <span class="now-city">成都</span>
                    </router-link>
                </div>
                <div class="cake">
                    <router-link to="/list" class="clear">
                        <img src="../assets/1.png" alt="">
                        <span class="head_span">蛋糕名录</span>
                        <i class="i_line"></i>
                    </router-link>
                </div>
                <div class="cake">
                    <router-link to="" class="clear">
                        <img src="../assets/2.png" alt="">
                        <span class="head_span">面包小食</span>
                        <i class="i_line"></i>
                    </router-link>
                </div>
                <div class="cake">
                    <router-link to="" class="clear">
                        <img src="../assets/3.png" alt="">
                        <span class="head_span">最新活动</span>
                        <i class="i_line"></i>
                    </router-link>
                </div>
                <div class="cake">
                    <router-link to="" class="clear">
                        <img src="../assets/5.png" alt="">
                        <span class="head_span">会员中心</span>
                        <i class="i_line"></i>
                    </router-link>
                </div>
            </div>
            <div class="header_right">
                <div class="login">
                    <img src="../assets/login.png" alt="">
                    <span class="head-span" v-if="this.$store.state.islogin == 0">
                        <router-link to="/userlogin" class="clear">登录</router-link>
                        |
                        <router-link to="/register" class="clear">注册</router-link>
                    </span>
                    <div class="head-span" v-else>
                        <span>注销</span>
                        <span>{{$store.getters.username}}</span>
                    </div>
                </div>
                <div class="login">
                    <router-link to="/userlogin" class="clear">
                        <img src="../assets/card.png" alt="">
                        <span class="head-span">卡卷充值</span>
                    </router-link>
                </div>
                <div class="mycar">
                        <img src="../assets/car.png" alt="" class="bag1">
                        <i class="mycar_num cart_num"></i>
                        <span class="head-span" style="margin-top:-7px">购物车</span>
                </div>
                <div class="activity">
                        <img src="../assets/activity.png" alt="" class="icon02">
                        <span class="head-span" style="margin-top:-1px">活动</span>
                </div>
            </div>
        </div>
    </div>
</template>
<style scoped>
    .header{
    width: 100%;
    height: 120px;
    background: #fff;
    z-index: 100;
    position: fixed;
    top: 0px;
    border-bottom: 1px solid #e8e8e8;
    min-width: 1210px;
    }
    .header_left{
    height: 120px;
    float: left;
    }
    .logo{
    width: 260px;
    height: 120px;
    padding-top: 10px;
    float: left;
    cursor: pointer;
    text-align: center;
    display: inline-block;
    }
    .logo>img{
        max-width: 180px;
        max-height: 100px;
    }
    .location{
    width: 90px;
    height: 120px;
    padding-top: 38px;
    float: left;
    text-align: center;
    position: relative;
    border-left: 1px solid #e8e8e8;
    border-right: 1px solid #e8e8e8;
    display: inline-block;
    }
    .location_a{
    display: inline-block;
    width: 50px;
    height: 50px;
    font-size: 12px;
    color: #8c8c8c;
    cursor: pointer;
    }
    .location_a img{
        margin-top: -6px;
        
    }
    .location_a span{
        width: 50px;
        display: inline-block;
        text-align: center;
        margin-top: 11px;
        font-size: 12px;
        color: #666666;
    }
    .cake{
    width: 90px;
    height: 120px;
    padding-top: 30px;
    float: left;
    text-align: center;
    display: inline-block;
    border-right: 1px solid #e8e8e8;
    position: relative;
    color: #8c8c8c;
    }
    .cake a{
    cursor: pointer;
    display: block;
    }
    .cake img{
        margin-bottom: 9px;
    }
    .cake span{
        display: block;
        text-align: center;
        font-size: 12px;
    }
    .clear{
    color: #666666;
    outline: medium none;
    text-decoration: none;
    }
    .i_line{
    position: absolute;
    left: 0;
    top: 0;
    width: 100%;
    height: 3px;
    background: #ffe32a;
    opacity: 0;  
    }
    .header_right {
    float: right;
    height: 120px;
    position: relative;
    }
    .login {
    width: 90px;
    height: 120px;
    padding-top: 40px;
    float: left;
    text-align: center;
    cursor: pointer;
    display: inline-block;
    border-left: 1px solid #e8e8e8;
    border-right: 1px solid #e8e8e8;
    }
    .login img{
        display: inline-block;
        margin-bottom: 6px;
        vertical-align: middle;
        margin-top: -20px;
    }
    .head-span {
    display: block;
    text-align: center;
    font-size: 12px;
    cursor: pointer;
    margin-top: -6px;
    }
    .mycar {
    width: 90px;
    height: 120px;
    padding-top: 41px;
    float: left;
    text-align: center;
    cursor: pointer;
    display: inline-block;
    border-right: 1px solid #e8e8e8;
    position: relative;
    margin-right: 128px;
    }
    .bag1{
        margin-bottom: 4px;
        width: 18px;
        height: 20px;
        margin-top: -20px;
    }
    .mycar-num {
    position: absolute;
    right: 15px;
    top: 45px;
    width: 16px;
    height: 16px;
    text-align: center;
    line-height: 16px;
    font-size: 11px;
    font-weight: 600;
    background: #ffe32a;
    color: #000;
    /* background: url(../img/yuan1.png) no-repeat center; */
    }
    .activity {
    width: 128px;
    height: 120px;
    text-align: center;
    background: #fff;
    z-index: 4;
    position: absolute;
    right: 0;
    top: 0;
        border-bottom: 1px solid lightgray;
    }
    .icon02{
        margin: 38px 0 9px 0;
        cursor: pointer;
    }
    .clear img{
        width: 30px;
        height: 30px;
    }
</style>
<script>
// export default {
//     name:'cake_header',
//     props:{
//         buttons:{
//             type: Array,
//             required:true
//         }
//     }
// }
</script>

