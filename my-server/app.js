const express = require('express');
const server = express();
const cors = require('cors');
var bodyParser = require('body-parser');
const mysql = require('mysql');
const { parse } = require('path');
const pool = mysql.createPool({
    host:'127.0.0.1',
    port:3306,
    user:'root',
    password:'',
    database:'cake',
    connectionLimit:20
})
server.use(bodyParser.urlencoded({ extended: false }));

// //解决跨域
server.use(cors({
    origin:['http://127.0.0.1:8080','http://localhost:8080']
}));

//账号密码登陆接口
  server.get('/res_user_login',(req,res)=>{
    //   console.log(12345);
      console.log(req.query);
      let uname = req.query.uname
      let upwd = req.query.upwd
    let sql = 'select * from cake_user where uname=? AND upwd = ?';
    pool.query(sql,[uname,upwd],(err,results)=>{
        if(err)throw err;
        // console.log(results);
        if(results.length >= 1){
            res.send('success');
        }else{
            res.send('error');
        }
    });
});

// 电话号码登陆接口
server.get('/phone_login',(req,res)=>{
    // console.log(1111)
    let phone = req.query.phone
    let sql = 'select * from cake_user where phone=?';
    pool.query(sql,[phone],(err,results)=>{
        if(err)throw err;
        // res.send({results});
        if(results.length >= 1){
            res.send('success');
        }else{
            res.send('error');
        }
    });
});

//注册查询用户接口
server.get('/user_query',(req,res)=>{
    // console.log(12345);
    // console.log(req.query);
    let uname = req.query.uname
  let sql = 'select * from cake_user where uname=?';
  pool.query(sql,[uname],(err,results)=>{
        if(err)throw err;
        if(results.length > 0){
            res.send('success');
        }else{
            res.send('error');
        }
  });
});

//注册查询电话号码接口
server.get('/check_phone',(req,res)=>{
    // console.log(1111)
    let phone = req.query.phone
    let sql = 'select * from cake_user where phone=?';
    pool.query(sql,[phone],(err,results)=>{
        if(err)throw err;
        if(results.length >= 1){
            res.send('success');
        }else{
            res.send('error');
        }
    });
});

//注册接口
server.post('/register',(req,res) => {
    console.log(req.body);
    var uname = req.body.uname;
    console.log(uname)
    var upwd = req.body.upwd;
    console.log(upwd)
    var phone = req.body.phone;
	console.log(phone)
	var sql = "INSERT INTO cake_user(uname,upwd,phone) values (?,?,?)"
	pool.query(sql,[uname,upwd,phone],(err,result) => {
		if(err) throw err;
      if(result.affectedRows > 0){
				res.send('success')
			}else{
				res.send('error');
			}
		
	})
})

//轮播图接口
server.get("/carousel",(req,res)=>{
	var sql = "select * from cake_carousel";
	pool.query(sql,(err,results)=>{
        if(err) throw err;
        res.send({results})
	})
})

//商品列表接口
server.get("/product",(req,res)=>{
	var sql = "select pid,pic,title,price from cake_product";
	pool.query(sql,(err,results)=>{
        if(err) throw err;
        res.send({results})
	})
})

//详情页接口
server.get('/article',(req,res)=>{
    //获取文章ID
    let id = req.query.id;
  
    
    let sql = 'SELECT * FROM cake_details WHERE lid=?';
    //执行SQL语句
    pool.query(sql,[id],(err,results)=>{
      if(err) throw err;
      console.log(results)
      res.send({results});
    });
  });

//列表页接口
server.get('/list',(req,res)=>{
    let sql = 'SELECT * FROM cake_details';
    console.log(111)
    //执行SQL语句
    pool.query(sql,(err,results)=>{
      if(err) throw err;
      console.log(results)
      res.send({results});
    });
  }); 

server.listen(9000,()=>{
    console.log('server is running...')
});