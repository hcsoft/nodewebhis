var express = require('express');
var router = express.Router();
var pool = require('../pool.js');
var cache = require('../cache.js')();
/* GET users listing. */
router.get('/', function (req, res) {
    res.send('respond with a resource');
});

router.post('/init', function (req, res) {
    console.log("init..........")

    var user = cache.users[req.session.user_id];
    pool.pool.open(pool.connectstr, function (err, db) {
        if (err) {
            return res.json({"success":false,"msg":'系统故障!请与系统管理员联系!'});
        }
        //获取菜单
        var rows = db.querySync("select * from menu_category where level=1 order by ordinal ")
        if (err) {
            console.log(err);
            return res.json({"success":false,"msg":'系统故障!请与系统管理员联系!'+err});
        }
        if(rows && rows.length>0){
            for(var i=0;i<rows.length;i++){
                var submenu = db.querySync("select * from menu_category where parentid='"+rows[i].id+"' order by ordinal ");
                for(var j=0;j<submenu.length;j++){
                    var menu = db.querySync("select * from menu_module where category_id='"+submenu[j].id+"' order by ordinal ");
                    submenu[j].child = menu;
                }
                rows[i].child = submenu;
            }
            res.json({"success":true,data:rows,district:cache.getdistrict(user.district_id),codelist:cache.code});
        }else{
            res.json({"success":false,"msg":'没有数据!'});
        }
        db.close(function(err){});
    });


});


module.exports = router;
