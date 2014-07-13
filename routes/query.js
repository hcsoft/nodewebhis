var express = require('express');
var router = express.Router();
var pool = require('../pool.js');
var cache = require('../cache.js');
/* GET users listing. */
router.get('/', function (req, res) {
    res.send('respond with a resource');
});

router.post('/init', function (req, res) {
    console.log("init..........")
    var queryname = req.param("queryname");
    var user = cache.users[req.session.user_id];
    var query = cache.getquery(queryname);
    res.json({"success":true,cols:query.cols});
});

router.post('/query', function (req, res) {
    console.log("query..........")
    var queryname = req.param("queryname");
    var params = eval(req.param("params"));
    console.log(params);
    console.log(params.fileno);
    var page = {
        pagesize : params.page && params.page.pagesize?params.page.pagesize:15,
        pagenum:params.page && params.page.pagenum?params.page.pagenum:1
    };
    var tmpdb = require("odbc")();
    /* 处理code */
    tmpdb.openSync(pool.connectstr);
    var user = cache.users[req.session.user_id];
    var query = cache.getquery(queryname);

    var where = query.querysql.wherestr;
    var paramlist = [];
    var select = "";
    for(var i = 0 ;i <query.cols.length ;i ++){
        var item = query.cols[i];
        if(item.display)
            select = select + ","+item.col +" "+item.code;
        if(item.isquery && params[item.code]){
            where = where + " and "+ item.col +" =  ? ";
            paramlist.push(params[item.code]);
        }
    }
    var countsql = " select count(*) num from "+query.querysql.sql+" where "+where;
    console.log(countsql);
    var ret = tmpdb.querySync(countsql,paramlist);
    page.rowcount = ret[0].num;
    page.rowcount = page.rowcount?page.rowcount:0;
    page.pagecount = parseInt(page.rowcount/page.pagesize) + (page.rowcount%page.pagesize >0 ? 1:0);
    if(page.pagenum> page.pagecount ){
        page.pagenum = 1;
    }
    if(select.length>0){
        select = "select * from ( SELECT TOP "+page.pagesize*page.pagenum +" row_number() OVER (ORDER BY "+ query.querysql.orderby +") rownum, "+select.substr(1)+" ";
    }
    var sql = select + " from "+query.querysql.sql+" where "+where + " )tb WHERE   tb.rownum > "+page.pagesize*(page.pagenum-1)+" ORDER BY tb.rownum ASC  ";
    //获取查询配置
    console.log(sql);
    var data = tmpdb.querySync(sql,paramlist);
    res.json({"success":true,data:data,page:page});
    tmpdb.close(function(err){});
});


module.exports = router;
