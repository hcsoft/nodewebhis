var express = require('express');
var router = express.Router();


/* GET home page. */
router.get('/', function (req, res) {
    var cache = require("../cache.js");
    res.render('login', { title: '公共卫生服务平台' });
});

router.post('/test', function (req, res) {
    console.log("test",req.session);
    res.json({"success": true});
});


router.post('/login', function (req, res) {
    var pool = require('../pool.js');
    pool.pool.open(pool.connectstr, function (err, db) {
        if (err) {
            return res.json({"success": false, "msg": '系统故障!请与系统管理员联系!'});
        }
        db.query("select * from auth_user where user_id=? and password = ? and valid_flag='1' ", [req.param("user_id"), req.param("password")], function (err, rows, moreResultSets) {
            if (err) {
                return console.log(err);
            }
            req.session.user_id = req.param("user_id");
            db.close(function (err) {});
            if (rows && rows.length > 0) {
                res.json({"success": true});
            } else {
                res.json({"success": false, "msg": '用户名或密码错误!'});
            }
        });
    });
});


router.post('/islogin', function (req, res) {
    if (req.session.user_id) {
        res.json({"success": true});
    } else {
        res.json({"success": false});
    }
});


router.get('/logout', function (req, res) {
    delete req.session.user_id;
    res.json({"success": true});
});


module.exports = router;
