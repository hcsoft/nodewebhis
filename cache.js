var pool = require('./pool.js');
var empiretime = 86400000;
empiretime = 0;
var cache = {
    getcachemap: function (type, code) {
        if (cache[type] && cache[type][code] && cache[type][code]["map"]) {
            return cache[type][code]["map"];
        } else {
            return {};
        }
    },
    getcachelist: function (type, code) {
        if (cache[type] && cache[type][code] && cache[type][code]["list"]) {
            return cache[type][code]["list"];
        } else {
            return [];
        }
    },
    getcachename: function (type, code) {
        if (cache[type] && cache[type][code] && cache[type][code]["name"]) {
            return cache[type][code]["name"];
        } else {
            return null;
        }
    }

};
var db = require("odbc")();
/* 处理code */
db.openSync(pool.connectstr);
cache.code = {};
var rows = db.querySync("select * from cod_basecode order by type , Number");
for (var i = 0; i < rows.length; i++) {
    if (!cache.code[rows[i].Type]) {
        cache.code[rows[i].Type] = {'map': {}, 'list': []};
    }
    if (rows[i].IsMain == 1) {
        cache.code[rows[i].Type]['name'] = rows[i];
    } else {
        var code = {"value": rows[i].ID, "text": rows[i].Name,"number": rows[i].Number};
        cache.code[rows[i].Type]['list'].push(code);
        cache.code[rows[i].Type]['map'][rows[i].ID] = code;
    }
}
/* 处理配置 */
rows = db.querySync("select * from cfg_base ");
cache.cfg = {};
for (var i = 0; i < rows.length; i++) {
    cache.cfg[rows[i].code] = rows[i].value;
}
/* 处理districtnumber */

var district = {child:{},data:{}};
var lens = [4,6,9,12];
function makeDistrict(obj , item){
    var curobj = obj;
    for(var i = 0 ;i<lens.length;i++){
        if(!curobj.child[item.id.substr(0,lens[i])]){
            curobj.child[item.id.substr(0,lens[i])] = {child:{},data:{}};
        }
        if(item.id.length == lens[i] ){
            curobj.child[item.id].data = item;
            return obj;
        }
        curobj = curobj.child[item.id.substr(0,lens[i])];
    }
};
cache.getdistrict = function(id){
    var curobj = cache.district;
    for(var i = 0 ;i<lens.length;i++){
        if(id.length == lens[i] ){
            return  curobj.child[id];
        }
        curobj = curobj.child[id.substr(0,lens[i])];
    }
}
rows = db.querySync("select * from cod_district where id like ?+'%' order by level, id", [cache.cfg.district]);
for (var i = 0; i < rows.length; i++) {
    district = makeDistrict(district,rows[i]);
}
cache.district = district;
//console.log(cache.district.child['5301'].child['530122']);
/* 处理查询 */
cache.querys = {};
cache.getquery = function(queryname){
    var tmpdb = require("odbc")();
    /* 处理code */
    tmpdb.openSync(pool.connectstr);
    if(!cache.querys[queryname] || new Date().getTime() - cache.querys[queryname].makedate.getTime() > empiretime ) {
        rows = tmpdb.querySync("select * from query_sql where queryname=? ", [queryname]);
        var querysql = rows[0];
        var cols = tmpdb.querySync("select * from query_cfg where queryname=? order by ord ", [queryname]);
        var buttons = tmpdb.querySync("select * from query_buttons where queryname=? order by ord ", [queryname]);
        var windowids = {};
        for(var i = 0 ; i <buttons.length;i++){
            if(!windowids[buttons[i].windowid]){
                var window = tmpdb.querySync("select * from query_window where id=?  ", [buttons[i].windowid]);
                var windowcfgs = tmpdb.querySync("select * from query_windowcfg where windowid=? order by row,ord ", [buttons[i].windowid]);
                buttons[i].window = window[0];
                var rowcfg = [];
                for(var j = 0 ; j <windowcfgs.length;j++){
                    if(!rowcfg[windowcfgs[j].row-1]){
                        rowcfg[windowcfgs[j].row-1] = {height:30,items:[]};
                    }
                    if(windowcfgs[j].listid && cache.code[windowcfgs[j].listid] && cache.code[windowcfgs[j].listid]['list']){
                        windowcfgs[j].codelist = cache.code[windowcfgs[j].listid]['list'];
                    }
                    if( windowcfgs[j].height>rowcfg[windowcfgs[j].row-1].height){
                        rowcfg[windowcfgs[j].row-1].height = windowcfgs[j].height;
                    }
                    rowcfg[windowcfgs[j].row-1].items.push( windowcfgs[j]);
                }
                for(var m =0 ; m<rowcfg.length;m++){
                    if(rowcfg[m]){
                        var deafaultcol = 1000/rowcfg[m].items.length;
                        var count =0 ;
                        var nocolnumarray = [];
                        for(var n = 0 ; n<rowcfg[m].items.length;n++){
                            if(!rowcfg[m].items[n].colnum || rowcfg[m].items[n].colnum<=0){
                                nocolnumarray.push(n);
                            }else{
                                count +=rowcfg[m].items[n].colnum;
                            }
                        }
                        var left = 1000 - count;
                        for(var z = 0 ; z<nocolnumarray.length;z++){
                            rowcfg[m].items[nocolnumarray[z]] =  floor(left/nocolnumarray.length);
                            count +=floor(left/nocolnumarray.length);
                        }
                        rowcfg[m].items[rowcfg[m].items.length-1].colnum += 1000-count;
                    }
                }
                var newrowcfg = []
                for(var m =0 ; m<rowcfg.length;m++){
                    if(rowcfg[m]){
                        newrowcfg.push(rowcfg[m]);
                    }
                }
                buttons[i].window.rowcfg = newrowcfg;
                windowids[buttons[i].windowid] = window[0];
            }else{
                buttons[i].window =  windowids[buttons[i].windowid];
            }
        }

        cache.querys[queryname] = {querysql: querysql, cols: cols, makedate: new Date(),buttons:buttons};
    }
    return cache.querys[queryname];
}
db.closeSync();
/* 处理用户 */
cache.users = {};
cache.adduser = function(user){
    cache.users[user.user_id] = user;
}

module.exports = function(){
    return cache;
}
