<template>
<div>
    <div class="footer">
         <div class="footer_title">
             <img src="../../public/img/login/logo1.png" alt=""> 
         </div>
         <div class="footer_list">
             <table>
                <tbody>
                   <tr>
                       <td>
                           <div>
                               <img src="../../public/img/login/gouwuche.png" alt="">
                           </div>
                           <div class="tit">
                               <router-link to="" class="tit">
                                  订购指南
                               </router-link>
                           </div>
                       </td>
                       <td>
                           <div>
                               <img src="../../public/img/login/zhifu.png" alt="">
                           </div>
                           <div class="tit">
                               <router-link to="" class="tit">
                                  支付方式
                               </router-link>
                           </div>
                       </td>
                       <td>
                           <div>
                               <img src="../../public/img/login/peisong.png" alt="">
                           </div>
                           <div class="tit">
                               <router-link to="" class="tit">
                                  配送说明
                               </router-link>
                           </div>
                       </td>
                       <td>
                           <div>
                               <img src="../../public/img/login/shouhou.png" alt="">
                           </div>
                           <div class="tit">
                               <router-link to="" class="tit">
                                  售后服务
                               </router-link>
                           </div>
                       </td>
                       <td>
                           <div>
                               <img src="../../public/img/login/qita.png" alt="">
                           </div>
                           <div class="tit">
                               <router-link to="" class="tit">
                                  经营资质
                               </router-link>
                           </div>
                       </td>
                   </tr>  
                </tbody>
             </table> 
         </div>
         <div class="footer_list1">
             <table>
                 <tbody>
                      <tr>
                          <td>
                              <div>
                                  <img src="../../public/img/login/weixin.png" alt="" class="wx">
                                  <img src="../../public/img/login/weibo.png" alt="" class="wb">
                              </div>
                          </td>
                      </tr>
                      <tr>
                          <td class="footer_bottom">
                               <p>Copyright © 2012-2020 唯品客(上海)投资管理有限公司 版权所有 沪ICP备12038156号-1</p>
                          </td>
                      </tr>
                 </tbody>
             </table>
         </div>
    </div>
</div>
    
</template>
<style scoped>
*{
    margin: 0px;
    padding: 0px;
}
    .footer{
    /* position: fixed; */
    bottom: 0px;
    width: 100%;
    min-width: 1260px;
    height: 270px;
    margin-top: 10px;
    text-align: center;
    clear: both;
    padding-bottom: 30px;
    background: url(../../public/img/login/foot_bg.png);
    }
    .footer .footer_list table {
    width: 50%;
    margin: 0 auto;
    }
    tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
    }
    tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
    }
    .footer .footer_list table tr td {
    width: 10%;
    text-align: center;
    padding-top: 10px;
    border: none;
    border-right: 1px solid white;
    }
    .footer .footer_list table tr td img {
    width: 25px;
    height: 25px;
    cursor: pointer;
    }
    .footer .footer_list table tr td .tit {
    font-size: 14px;
    padding-bottom: 10px;
    color: white;
    text-decoration: none;
    cursor: pointer;
    }
    .footer_list1{
    position: relative;
    }
    .footer .footer_list1 table {
    width: 100%;
    margin: 0 auto;
    }
    table {
    border-collapse: collapse;
    border-spacing: 0;
    display: table;
    }
    .footer .footer_list1 table tr td {
    width: 15%;
    text-align: center;
    padding-top: 10px;
    border: none;
    }
    .wx{
    width: 53px;
    height: 50px;
    padding-right: 20px;
    padding-top: 10px;
    cursor: pointer;
    }
    .wb{
    width: 50px;
    height: 50px;
    padding-left: 20px;
    padding-top: 10px;
    cursor: pointer;
    }
    .footer_bottom{
    font-size: 13px;
    color: white;
    width: 15%;
    text-align: center;
    padding-top: 10px;
    border: none;
    }
</style>