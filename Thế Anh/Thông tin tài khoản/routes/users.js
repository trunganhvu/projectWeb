var express = require('express');
var router = express.Router();
const mongoose = require('mongoose');
/* GET users listing. */
mongoose.connect('mongodb://localhost:27017/login', ()=>{
  console.log("connect success");
  router.get('/', function(req, res, next) {
    res.send('respond with a resource');
  });
});


module.exports = router;
