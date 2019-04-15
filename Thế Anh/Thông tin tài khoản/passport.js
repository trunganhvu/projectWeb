// load những thứ chúng ta cần
var LocalStrategy = require('./node_modules/passport-local').Strategy;
var FacebookStrategy = require('./node_modules/passport-facebook').Strategy;
// Lấy thông tin những giá trị auth
var configAuth = require('./auth');
// load  user model
var User = require('./routes/userModel');
module.exports = function (passport) {
    // =========================================================================
    // passport session setup ==================================================
    // =========================================================================
    // required for persistent login sessions
    // passport needs ability to serialize and unserialize users out of session
    // used to serialize the user for the session
    passport.serializeUser(function (user, done) {
        done(null, user.id);
    });
    // used to deserialize the user
    passport.deserializeUser(function (id, done) {
        User.findById(id, function (err, user) {
            done(err, user);
        });
    });
    // code for login (use('local-login', new LocalStategy))
    // code for signup (use('local-signup', new LocalStategy))
    // =========================================================================
    // FACEBOOK ================================================================
    // =========================================================================
    passport.use(new FacebookStrategy({
            // điền thông tin để xác thực với Facebook.
            // những thông tin này đã được điền ở file auth.js
            clientID: configAuth.facebookAuth.clientID,
            clientSecret: configAuth.facebookAuth.clientSecret,
            callbackURL: configAuth.facebookAuth.callbackURL,
            profileFields: ['id','displayName','email','first_name','last_name','middle_name']
        },
        // Facebook sẽ gửi lại chuối token và thông tin profile của user
        function (token, refreshToken, profile, done) {
            // asynchronous
            process.nextTick(function () {
                // tìm trong db xem có user nào đã sử dụng facebook id này chưa
                User.findOne({'facebook.id': profile.id}, function (err, user) {
                    if (err)
                        return done(err);
                    // Nếu tìm thấy user, cho họ đăng nhập
                    if (user) {
                        return done(null, user); // user found, return that user
                    } else {
                        // nếu chưa có, tạo mới user
                        var newUser = new User();
                        // lưu các thông tin cho user
                        newUser.facebook.id = profile.id;
                        newUser.facebook.token = token;
                        newUser.facebook.name = profile.name.givenName + ' ' + profile.name.familyName; // bạn có thể log đối tượng profile để xem cấu trúc
                        newUser.facebook.email = profile.emails[0].value; // fb có thể trả lại nhiều email, chúng ta lấy cái đầu tiền
                        // lưu vào db
                        newUser.save(function (err) {
                            if (err)
                                throw err;
                            // nếu thành công, trả lại user
                            return done(null, newUser);
                        });
                    }
                });
            });
        }));
};