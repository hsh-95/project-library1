<template>
    <div class="logo_info_r">
        <div class="logo_r">  
            <router-link to="/" class="logo"></router-link> 
            <span class="findpw">欢迎注册</span>
        
        </div> 
        <div>
            <div class="login_wrap">
                <div class="login_banner">
                    <div class="w990 ">
                        <span class="banner_bg"></span>
                         <!-- <a href="" class="banner_bg"></a> -->
                         <div class="register_box">
                             <ul class="register_top">
                             <li class="fl cur">欢迎注册</li>
                             <li class="have_account fr">
                                 已有账号·
                                 <router-link to="/userlogin" class="login">
                                    <span>登录</span>
                                 </router-link>
                             </li>
                            </ul>
                            <div class="from">
                                <div class="item">
                                    <input type="text" 
                                    name="uname" 
                                    v-model="uname" 
                                    @blur="user_query" 
                                    placeholder="请输入用户名" 
                                    class="text">
                                    <i class="i_user"></i>
                                    <div>
                                        <span class="label" id="notice_user"></span>
                                    </div>
                                </div>
                                <div class="item">
                                    <input type="text" 
                                    name="phone" 
                                    @blur="phone_query" 
                                    v-model="phone" 
                                    placeholder="请输入电话号码" 
                                    class="text">
                                    <i class="i_user i_phone"></i>
                                    <div>
                                        <span class="label" id="notice_phone"></span>
                                    </div>
                                </div>
                                <div>
                                    <div>
                                        <input type="password" 
                                        name="upwd" 
                                        v-model="upwd" 
                                        placeholder="请输入密码" 
                                        class="text"
                                        @blur="check_password1">
                                        <i class="i_user i_pass1"></i> 
                                        <div>
                                            <span class="label" id="notice_pwd"></span>
                                        </div>
                                    </div>
                                    <div>
                                        <input type="password" 
                                        name="upwd2"  
                                        placeholder="请再次输入密码" 
                                        class="text"
                                        v-model="upwd2"
                                        @blur="check_password2">
                                        <i class="i_user i_pass2"></i> 
                                        <div>
                                            <span class="label" id="notice_pwd2"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <input type="text" class="text text-te" placeholder="请输入运算结果" disabled>
                                    <label class="img" style="margin-left:5px;">
                                        <img src="../assets/captcha.jpg" alt="">
                                    </label>
                                    <i class="i_user i_captcha"></i>
                                    <div style="clear:both">
                                        <span class="label"></span>
                                    </div>
                                </div>
                                <div class="safety">
                                    <input type="checkbox" value="1" checked class="checkbox">
                                    <label class="mar_b">
                                        我已看过并接受《
                                            <a href="" style="color:blue">用户协议</a>

                                        》
                                    </label>
                                </div> 
                                <div>
                                    <button name="submit" @click="register"  class="btn-img btn-register">立即注册</button>
                                    <!-- <input type="submit" name="submit"  class="btn-img btn-register" value="立即注册"> -->
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
   .register_box{
       position: absolute;
       top: 100px;
       right: 0;
       width: 385px;
       border: 1px solid #ddd;
       border-top: 0;
   }
   .register_top{
       right: 46px;
       top: 70px;
       z-index: 99;
       font-size: 14px;
       width: 383px;
       height: 31px;
       margin-left: 0px;
       padding: 0px;
   }
   .register_top>li{
       list-style: none;
   }
   .register_top>.cur{
       background: #fff;
       color: #e31939;
       border: 1px solid #ddd;
       border-right: 0px;
       border-bottom: 0;
       border-left: 0;
       line-height: 31px;
       height: 32px;
       margin-top: 0;
       margin-left: 1px;
       width: 170px;
       cursor: pointer;
       text-align: center;
       position: relative;
       z-index: 1;
   }
   .fl{
       float: left;
   }
   .have_account{
       box-sizing: border-box;
       font-size: 12px;
       height: 32px;
       border-bottom: 1px solid #ddd;
       border-left: 1px solid #ddd;
       border-right: 2px solid white;
       width: 213px;
       margin-right: -2px;
       padding-top: 5px;
       background: white;
   }
   .login{
       color: red;
       text-decoration: none;
   }
   .fr{
       float: right;
   }
   .form{
    float: right;
    overflow: hidden;
    border: 1px #ddd solid;
    padding: 30px 40px;
    width: 300px;
    min-height: 370px;
    height: auto;
   }
   .form input{
       height: 38px;
   }
   .item{
    overflow: hidden;
    zoom: 1;
    position: relative;
   }
   .text{
    width: 248px;
    height: 38px;
    padding: 10px 5px 10px 40px;
    border: 1px solid #ddd;
    font-size: 14px; 
    outline: none;
   }
   .form i{
    display: block;
    width: 20px;
    height: 20px;
    position: absolute;
    left: 10px;
    top: 9px;
    /* 不能删除 */
    /* background: url() no-repeat; */
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
   .i_pass{
    background-position: 0 -36px;
   }
   .text-te{
       width: 150px;
       margin-left: -93px;
   }
   .img>img{
       position: absolute;
       height: 38px;
       left: 225px;
       top: 0px;
   }
   .i_captcha{
       background-position: 0 -57px;
   }
   .safety{
    height: 40px;
    line-height: 40px;
    overflow: hidden;
   }
   .checkbox{
       margin-top: 14px;
       /* float: left; */
   }
   .mar_b{
    height: 40px;
    line-height: 40px;
    margin-left: 5px;
    /* float: left; */
   }
   .mar_b>a{
    outline: medium none;
    text-decoration: none;
   }
   .btn-register{
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
    margin-bottom: 50px;
   }
   .i_user{
    display: block;
    width: 20px;
    height: 20px;
    position: absolute;
    left: 78px;
    top: 8px;
    background: url(../assets/icon_img.png) no-repeat;
    background-position: 0 -15px;
   }
   .i_phone{
    background-position: 0 -81px;
   }
   .i_pass1{
    top: 206px;
    background: url(../assets/icon_img.png) no-repeat;
    background-position: 0 -36px;
   }
   .i_pass2{
    top: 281px;
    background: url(../assets/icon_img.png) no-repeat;
    background-position: 0 -36px;
   }
   .i_captcha{
       background-position: 0 -56px !important;
   }
</style>
<script>
    export default({
        
        data(){
            return{
                uname:'',
                upwd:'',
                upwd2:'',
                phone:''
            }
        },
        methods:{
            user_query(){
                let unameRegExp = /^[0-9A-Za-z]{6,20}$/;
                if(!this.uname){
                    $("#notice_user").html("用户名不能为空").css("color","red"); 
                }else if(unameRegExp.test(this.uname)){
                    this.axios.get('/user_query?uname=' +this.uname ).then(result=>{
                        if(result.data == "success"){
                            $("#notice_user").html("该用户名已被注册，请重新输入用户名").css("color","red");
                            this.uname = '';
                            return true;
                        }else {
                            $("#notice_user").html('该用户名未被注册，可以使用该用户名').css("color","green");
                        }
                    })
                }else {
                    $("#notice_user").html('用户名格式不正确').css("color","red");
                    return false;
                }
            },
            phone_query(){
                let phoneRegExp = /^1[3-9]\d{9}$/;
                if(!this.phone){
                     $("#notice_phone").html("电话号码不能为空").css("color","red");
                }else if(phoneRegExp.test(this.phone)){
                    this.axios.get('/phone_login?phone=' + this.phone).then(results=>{
                        if(results.data == "success"){
                            $("#notice_phone").html("该电话号码已被注册，请重新输入电话号码").css("color","red");
                            this.phone = '';
                            return true;
                        }else {
                            $("#notice_phone").html("该电话号码未被注册，可以使用该电话号码").css("color","green");
                        }
                    })
                }else{
                    $("#notice_phone").html("电话号码格式不正确").css("color","red");
                    return false;
                }
                
            },
            check_password1(){
                let passwordRegExp = /^[0-9A-Za-z]{4,6}$/;
                if(!this.upwd){
                    $("#notice_pwd").html("密码不能为空").css("color","red");
                }else if(passwordRegExp.test(this.upwd)){
                    $("#notice_pwd").html("密码格式正确").css("color","green");
                    return true;
                }else{
                    $("#notice_pwd").html("密码格式不正确").css("color","red");
                    this.upwd = ''
                    return false;
                }
            },
            check_password2(){
                if(!this.upwd2){
                    $("#notice_pwd2").html("确认密码不能为空").css("color","red");
                }else if(this.upwd == this.upwd2){
                    $("#notice_pwd2").html("两次密码输入一致").css("color","green");
                    return true;
                }else{
                    $("#notice_pwd2").html("两次密码输入不一致").css("color","red");
                    this.upwd2 = '';
                    return false;
                }
            },
            register(){
                if(this.uname && this.phone && this.upwd && this.upwd2){
                    this.axios.post('/register','uname='+ this.uname +'&upwd='+ this.upwd +'&phone=' + this.phone).then(result=>{
                        if(result.data == "success"){
                            alert('注册成功');
                            this.$router.push('/userlogin')
                        }else {
                            alert('注册失败');
                        }
                    })
                }else{
                    alert("用户名、电话号码或者密码格式不正确")
                }
                
            }
        }
    })
</script>>