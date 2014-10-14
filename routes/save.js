var express = require('express');
var router = express.Router();
var pool = require('../pool.js');
var cache = require('../cache.js')();
var moment = require('moment');

function getFileno(distid){
    var tmpdb = require("odbc")();
    /* 处理code */
    tmpdb.open(function (err, db) {

        db.beginTransactionSync();
        try {
            var sql = " select * from file_key where distid= ? ";
            var row = db.querySync(sql,[distid]);
            if(row){
                var addkeysql = " insert into file_key (distid,curkey) values(?,?)";
                var row = db.querySync(sql,[distid,1]);
            }else{
                var addkeysql = " insert into file_key (distid,curkey) values(?,?)";
                db.querySync(sql,[distid,1]);

            }
            db.commitTransactionSync();
        } catch (ex) {
            db.rollbackTransactionSync();
            res.json({"success": false, "msg": "保存成功!"});
        }
        db.close(function (err) {

        });
    });
}
var tableAddInit = {
    "file_base": function(obj){
        obj.fileno = getFileno(obj.villagecode)
    }
};
function savetable(db,obj,name){
    var codesql = "";
    var valuesql = "";
    var valuelist = [];
    for (var code in obj) {
        codesql += "," + code;
        valuesql += ",?";
        if (util.isDate(obj[code])) { //用来转换时间,防止时区倒是的小时差
            valuelist.push(moment(obj[code]).format("YYYY-MM-DD HH:mm:ss.SSS"));
        } else {
            valuelist.push(obj[code]);
        }
    }
    var insertsql = " insert into " + name + " ( " + codesql.substr(1) + ") values(" + valuesql.substr(1) + ")";
    db.querySync(insertsql,valuelist);
}


router.post('/savetable', function (req, res) {
    var tablename = req.param("tablename");
    var params = eval(req.param("params"));
    console.log(JSON.stringify(params));
    console.log(tablename);
    console.trace();
    var tmpdb = require("odbc")();
    /* 处理code */
    tmpdb.open(function (err, db) {
        db.beginTransactionSync();
        try {
            var maintable = {};
            for (var key in params) {
                if (params[key] instanceof Object) {
                    //如果是Object , 那么直接进行保存
                    savetable(db,params[key] ,key);
                } else if (util.isArray(params[key])) {
                    //如果是数组,循环保存
                    for(var row in params[key]){
                        //如果是Object , 那么直接进行保存
                        savetable(db,row ,key);
                    }
                } else {
                    maintable[key] = params[key]
                }
            }
            //保存maintable
            savetable(db,maintable ,tablename);
            db.commitTransactionSync();
            res.json({"success": true, "msg": "保存成功!"});
        } catch (ex) {
            db.rollbackTransactionSync();
            res.json({"success": false, "msg": "保存成功!"});
        }
        db.close(function (err) {

        });
    });
});





module.exports = router;
