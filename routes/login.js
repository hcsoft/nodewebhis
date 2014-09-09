var express = require('express');
var router = express.Router();
var pool = require('../pool.js');
var cache = require("../cache.js")();
var util = require('util');
/* GET home page. */
router.get('/', function (req, res) {
    //查询模块库，加载所有的js
    var pool = require('../pool.js');
    pool.pool.open(pool.connectstr, function (err, db) {
        if (err) {
            return res.json({"success": false, "msg": '系统故障!请与系统管理员联系!'});
        }
        var js = db.querySync("select js from menu_module where js is not null ");
        util.log(js);
        res.render('login', { title: '公共卫生服务平台', js: js });
    });
});

router.post('/test', function (req, res) {
    util.log("test", req.session);
    res.json({"success": true});
});


router.post('/login', function (req, res) {

    pool.pool.open(pool.connectstr, function (err, db) {
        if (err) {
            return res.json({"success": false, "msg": '系统故障!请与系统管理员联系!'});
        }

        db.query("select * from auth_user where user_id=? and password = ? and valid_flag='1' ", [req.param("user_id"), req.param("password")], function (err, rows, moreResultSets) {
            if (err) {
                return util.log(err);
            }
            req.session.user_id = req.param("user_id");

            if (rows && rows.length > 0) {
                cache.adduser(rows[0]);
                var orgs = db.querySync("select * from cod_org where id = ?",[rows[0]['org_id']]);
                if(orgs.length>0){
                    rows[0].org = orgs[0];
                }
                res.json({"success": true, "user": rows[0].user_name});
            } else {
                res.json({"success": false, "msg": '用户名或密码错误!'});
            }
            db.close(function (err) {
            });
        });
    });
});


router.post('/islogin', function (req, res) {
    if (req.session.user_id) {
        res.json({"success": true, "user": cache.users[req.session.user_id].user_name});
    } else {
        res.json({"success": false});
    }
});


router.get('/logout', function (req, res) {
    delete req.session.user_id;
    res.json({"success": true});
});


module.exports = router;
