var express = require('express');
var router = express.Router();
var pool = require('../pool.js');
var cache = require('../cache.js')();
var util = require('util');
/* GET users listing. */
router.get('/', function (req, res) {
    res.send('respond with a resource');
});

router.post('/init', function (req, res) {
    util.log("init..........")
    var date = Date.valueOf('2014-10-14T16:00:00.000Z');
    console.log(date);
    var user = cache.users[req.session.user_id];
    pool.pool.open(pool.connectstr, function (err, db) {
        if (err) return next(err);
        //获取菜单
        var menus = cache.menus[req.session.user_id];
        if (!menus) {
            //TODO 需要增加权限过滤
            var rows = db.querySync("select * from menu_category where level=1 order by ordinal ");
            if (err) return next(err);
            if (rows && rows.length > 0) {
                for (var i = 0; i < rows.length; i++) {
                    var submenu = db.querySync("select * from menu_category where parentid='" + rows[i].id + "' order by ordinal ");
                    for (var j = 0; j < submenu.length; j++) {
                        var menu = db.querySync("select * from menu_module where category_id='" + submenu[j].id + "' order by ordinal ");
                        submenu[j].child = menu;
                    }
                    rows[i].child = submenu;
                }
            }
            menus = rows;
            cache.menus[req.session.user_id] = menus;
        }
        db.close(function (err) {
        });
        res.json({"success": true, menus: menus, district: cache.getdistricts(user.dist_id), defaults: cache.getdefaults(user.user_id,user.dist_id), codelist: cache.code});
    });


});


router.post('/getdefault', function (req, res) {
    var district = req.param("district");
    var tablename = req.param("tablename");
    var user = cache.users[req.session.user_id];
    console.log(district,tablename);
    var data = cache.getdefault(user.user_id,district,tablename);
    console.log(data);
    console.trace(data);
    res.json({"success": true,  'data': cache.getdefault(user.user_id,district,tablename)});
});


module.exports = router;
