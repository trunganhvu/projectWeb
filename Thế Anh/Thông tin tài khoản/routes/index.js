var express = require('express');
var router = express.Router();
const MongoClient = require('mongodb').MongoClient;
const assert = require('assert');



const userModel = require ("./userModel")// lay du lieu tu userModel khi da export
//const url = 'mongodb://localhost:27017/login';//ket noi voi database login
const url = 'mongodb://localhost:27017/register';//ket loi voi database register
const mongoose = require('mongoose');//ket noi den mongooes

var passport = require('../passport')
var flash    = require('connect-flash');
var morgan       = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser   = require('body-parser');
var session      = require('express-session');

/* GET home page. */
mongoose.connect(url , ()=>{
  console.log("connect to mongo success");
  router.get('/', function(req, res, next) {
    res.render('index', { title: 'Trang chu' });
  });
  router.get('/login', function(req, res, next) {
    res.render('login', { title: 'Trang dang nhap' });
  });
  router.get('/register', function(req, res, next) {
    res.render('register', { title: 'Trang dang ky' });
  });
  router.get('/saimk', function(req, res, next) {
    res.render('saimk', { title: 'Trang dang nhap' });
  });
	//tạo tài khoản
  // router.post('/login', async function(req, res, next) {
  //   var login ={
  //     "user":req.body.user,
  //     "password":req.body.password
  //   }
  //   const newUser = await UserModel.create(login)
  //   if(newUser) res.status(201).redirect("/");
  //   else res.status(201).end("KHong dc");
  // });
  router.post('/login', async function(req, res, next){
    const login = {
      "email":req.body.user,
      "password":req.body.password
    }
    const User = await userModel.findOne({email: login.email});
    
    console.log(User);
    if(!User) res.status(200).json({message : " Tai khoan khong ton tai"});
    else {
      if((User.password === login.password)) res.status(201).redirect("/");
      else res.status(200).redirect("/saimk");
    }
  })
  router.post('/register',async function(req,res,next){
    const user ={
      "firstname":req.body.firstname,
      "lastname":req.body.lastname,
      "email":req.body.email,   
      "password":req.body.password,
      "confirmpassword":req.body.confirmpassword
    }
    const newuser = await userModel.create(user);
    console.log(newuser);
    if(newuser.password==newuser.confirmpassword) res.status(201).redirect("/login");
    else res.status(201).end("KHong dc");
  })

  // xác thực facebook
 // yêu cầu xác thực bằng facebook
 app.get('/auth/facebook', passport.authenticate('facebook', {scope: ['email']}));
 // xử lý sau khi user cho phép xác thực với facebook
 app.get('/auth/facebook/callback',
     passport.authenticate('facebook', {
         successRedirect: '/profile',
         failureRedirect: '/'
     })
 );
})

module.exports = router;
