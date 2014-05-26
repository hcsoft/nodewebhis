var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function (req, res) {
    res.send('respond with a resource');
});

router.post('/init', function (req, res) {
    console.log("init..........")
    var pool = require('../pool.js');
    pool.pool.open(pool.connectstr, function (err, db) {
        if (err) {
            return res.json({"success":false,"msg":'系统故障!请与系统管理员联系!'});
        }
        //获取菜单
        db.query("select * from menu_category  ", function (err, rows, moreResultSets) {
            if (err) {
                return console.log(err);
            }
            req.session.user_id = req.param("user_id");
            db.close(function(err){});
            //console.log(rows);
            if(rows && rows.length>0){
                res.json({"success":true,rows:rows});
            }else{
                res.json({"success":false,"msg":'没有数据!'});
            }
        });
    });
});


module.exports = router;
