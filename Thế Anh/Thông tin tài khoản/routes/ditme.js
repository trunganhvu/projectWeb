const mongooes=require('mongoose');
const bcrypt=require('bcrypt-nodejs');
const userSchema=new mongooes.Schema(
    {
    
    firstname:String,
    lastname:String,
    email:String,
    password:{
        type:String,
        required:true
    },
    confirmpassword:String,
    local:{
        username:String,
        password:String,
    },
    facebook:{
        id:String,
        token:String,
        email:String,
        name:String
    }
    },
    

    
);
const user= mongooes.model("user",userSchema);
// Tạo mã hóa mật khẩu
// userSchema.methods.generateHash = function(password) {
//     return bcrypt.hashSync(password, bcrypt.genSaltSync(8), null);
// };

// // kiểm tra mật khẩu có trùng khớp
// userSchema.methods.validPassword = function(password) {
//     return bcrypt.compareSync(password, this.local.password);
// };

module.exports=user;