<template>
<div>
    <div class="logo_info_r">
        <div class="logo_r">  
           <router-link to="/" class="logo"></router-link>
           <span class="findpw">欢迎登陆</span>
        </div> 
        <div>
            <div class="login_wrap">
                <div class="login_banner">
                    <div class="w990 ">
                        <span class="banner_bg"></span>
                         <div class="login_form">
                                 <div class="login_tit">
                                     <div class="zy_nav" >
                                         <router-link to="/userlogin">
                                             <span>账号密码登陆</span>
                                         </router-link>
                                         <router-link to="/phonelogin" class="phone_login_title">
                                            <span>手机验证登陆</span>
                                         </router-link>
                                     </div>
                                 </div>
                                 <div class="form">
                                     <div class="msg_wrap">
                                         <div class="msg_error">
                                             <i class="msg_icon"></i>
                                             <span class="msg_error_text"></span>
                                         </div> 
                                     </div>
                                     <section class="zy_form_container" >
                                         <section style="display:none;" class="user_login">
                                             <div class="item item-name">
                                                 <i class="icon"></i>
                                                 <input type="text" name="uname" class="text" placeholder="手机号">
                                             </div>
                                             <div class="item item-password">
                                                 <i class="icon"></i>
                                                 <input type="password" name="upwd" class="text" placeholder="密码">
                                             </div>
                                             <div class="safety" id="autoentry">
                                                 <label for="remember" class="mar_b">
                                                     <input type="checkbox" value="1" name="remember" id="remember" class="checkbox">
                                                     请保存我这次的登陆信息
                                                 </label>
                                                 <a href="/res_register" class="forget_password">立即注册</a>
                                                 <a href="" class="forget_password">忘记密码</a>
                                             </div>
                                         </section>
                                         <section style="display:block" class="phone_login">
                                             <div class="item item-name">
                                                 <i class="icon"></i>
                                                 <input type="text" 
                                                 name="phone"
                                                 v-model="phone" 
                                                 class="text" 
                                                 placeholder="请输入电话号码"
                                                 @blur="check_phone()">
                                             </div>
                                             <div>
                                                <span class="label" id="notice_phone"></span>
                                             </div>
                                             <div class="item item_authcode clearfix">
                                                 <div class="item_detail f1">
                                                     <i class="icon"></i>
                                                     <input type="text" name="code" class="text " textindex="3" disabled>
                                                 </div>
                                                 <div class="getCode fr btn_send_code" type="get" data-value="phone">
                                                     获取验证码
                                                 </div>
                                             </div>
                                         </section>
                                     </section>
                                     <div class="login-btn">
                                         <input type="hidden" name="act" value="act_login">
                                         <input type="hidden" name="back_act" value="">
                                         <!-- <button class="btn-img btn-entry" id="loginsubmit" @click="phone_login()">立即登录</button> -->
                                         <button @click="phone_login()" class="btn-img btn-entry">立即登陆</button>
                                     </div>
                                 </div>
                         </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
    
</template>
<style scoped >
    .logo_info_r{
        width: 920px;
        margin: 0 auto;
        position: relative;
    }
    .logo{
        display: block;
        width: 250px;
        height: 70px;
        background: url(../../public/img/login/logo1.png) no-repeat;
        /* background-position-x: 11px; */
        background-size: 45%;
        margin: 10px 0 0 0px;
        float: left;
        /* left: 100px; */
    }
    .logo_r{
        width: 100%;
        height: 95px;
    }
    .findpw{
        /* position: absolute; */
        border-left: 1px solid #eee;
        width: 290px;
        height: 30px;
        line-height: 30px;
        font-size: 20px;
        margin: 26px 0px 0px 0px;
        /* top: 0px;
        left: 134pxpx; */
        text-indent: -190px;
        float: left;
        padding: 0 15px ;
    }
    .login_wrap{
        height: 475px;
    }
    .login_banner{
        height: 475px;
    }
    .w990{
        width: 990px !important;
        margin: 0 auto;
    }
    .banner_bg{
        display: block;
        width: 100%;
        height: 475px;
        background: url(../../public/img/login/login.png) no-repeat;
        background-size: 70%;
    }
    .login_form{
        position: absolute;
        width: 388px;
        height: 378px;
        border: 1px solid lightgray;
        padding: 20px 40px;
        border-radius: 5px;
        top: 100px;
        left: 500px;
    }
    .login_tit{
        height: 27px;
        line-height: 27px;
        font-size: 20px;
    }
    .zy_nav{
        display: flex;
        flex-direction: row;
        align-items: center;
        padding-left: 38px;
    }
    .login_tit span{
        font-size: 15px;
        user-select: none;
        cursor: pointer
        color="gray";
    }
    .login_tit span.active{
        color: black;
    }
    .login_tit span:last-child {
        /* border-left: 1px solid gray; */
        margin-left: 10px;
        padding-left: 10px;
    }
    .msg_wrap{
        min-height: 31px;
        height: auto;
        margin: 5px 0;
        visibility: hidden;
    }
    .msg_error{
        position: relative;
        background: white;
        color: red;
        border: 1px solid #ff6d82;
        line-height: 18px;
        min-height: 18px;
    }
    .msg_icon{
        position: absolute;
        left: 13px;
        top: 5px;
        display: block;
        width: 14px;
        height: 14px;
        background-position: 0 0;
    }
    .item{
        overflow: hidden;
        height: 38px;
        position: relative;
        border: 1px solid gray;
        margin-bottom: 30px;
    }
    .item-name{
        margin-bottom: 0;
    }
    .icon{
       display: block;
       width: 20px;
        height: 20px;
        position: absolute;
        left: 16px;
        top: 9px;
        background: url(../assets/icon_img.png) no-repeat;
    }
    .item-name>.icon{
        display: block;
        width: 20px;
        height: 20px;
        position: absolute;
        left: 16px;
        top: 9px;
        background: url(../assets/icon_img.png) no-repeat;
        background-position: 0px -81px;
    }
    .text{
        line-height: 18px;
        height: 18px;
        border: 0;
        padding: 19px 0  10px 40px;
        width: 264px;
        float: none;
        overflow: hidden;
        font-size: 14px;
        outline: none;
    }
    .item_password .icon{
        background-position: 0 -36px;
    }
    .safety{
        margin-bottom: 15px;
        overflow: hidden;
        height: 18px;
        line-height: 18px;
    }
    .mar_b{
        float: left;
        font-size: 12px;
    }
    .forget_password{
        font-size: 12px;
        margin-right: 20px;
    }
    .checkbox{
        vertical-align: middle;
        margin-right: 3px;
        float: none;
    }
    .safety>a{
        color: #666666;
        outline: medium none;
        text-decoration: none;
    }
    .item_authcode{
        border: 0 !important;
        height: 40px !important;
    }
    .item_deatil{
        width: 150px;
    }
    .f1{
        float: left;
    }
    .f1 .icon{
        background-position: 0 -57px;
    }
    .item_authcode .text{
        width: 100px;
    }
    .item_detail>input{
        height: 38px;
        border: 1px solid gray;
        width: 150px !important;
    }
    .getCode{
        vertical-align: middle;
        cursor: pointer;
        width: 140px;
        height: 38px;
        line-height: 40px;
        text-align: center;
        border: 1px solid #ddd;
        font-size: 14px;
        margin-left: 10px;
    }
    .fr{
        float: right;
    }
    .login-btn .btn-img{
        width: 300px;
        height: 35px;
        font-size: 14px;
        color: #FFF;
        background: #E31939;
        text-align: center;
        line-height: 35px;
        text-decoration: none;
        cursor: pointer;
        letter-spacing: 2px;
        border: none;
    }
    .phone_login_title>span{
        border-left:1px solid gray;
    }
    .label{
    display: inline-block;
    font-size: 14px;
    color: #999;
    padding:10px 10px 10px 0;
    height: 30px;
    line-height: 30px;
    display: inline-block;
   }
</style>
<script>
    export default({
        
        data(){
            return{
                phone:''
            }
        },
        methods:{
           phone_login(){
               if(this.phone){
                    this.axios.get('/phone_login?phone=' + this.phone).then(results=>{
                        if(results.data == "success"){
                            alert('登陆成功');
                            this.$router.push('/');
                            this.$store.commit('login');
                    localStorage.setItem('islogin','1')
                        }else {
                            alert('该手机号未注册！');
                        }
                    })
                }
           },
           check_phone(){
             let phoneRegExp = /^1[3-9]\d{9}$/;
             if(!this.phone){
                 $('#notice_phone').html("电话号码不能为空").css('color','red');
             }else if(phoneRegExp.test(this.phone)){
                 $('#notice_phone').html("电话号码格式正确").css('color','green');
             }else{
                $('#notice_phone').html("电话号码格式不正确").css('color','red');
            }
        } 
        }
    })
</script>>