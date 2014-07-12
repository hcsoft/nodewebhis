var pool = require('./pool.js');
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
var rows = db.querySync("select * from cod_basecode order by type , ismain desc");
for (var i = 0; i < rows.length; i++) {
    if (!cache.code[rows[i].Type]) {
        cache.code[rows[i].Type] = {'map': {}, 'list': []};
    }
    if (rows[i].IsMain == 1) {
        cache.code[rows[i].Type]['name'] = rows[i].Name;
    } else {
        cache.code[rows[i].Type]['list'].push({"value": rows[i].Number, "text": rows[i].Name});
        cache.code[rows[i].Type]['map'][rows[i].Number] = rows[i].Name;
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
db.closeSync();
/* 处理用户 */
cache.users = {};
cache.adduser = function(user){
    cache.users[user.user_id] = user;
}
module.exports = cache;
