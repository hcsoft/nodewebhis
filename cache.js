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
//处理code
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
//处理districtnumber
//var cfg = require("./cfg.js");
//cache.districtnumber = {}
//rows = db.querySync("select * from cod_district where id like '?%' order by level, id", cfg.districtNumber);
//var baselevel = 0;
//var baselen = cfg.districtNumber.length;
//for (var i = 0; i < rows.length; i++) {
//    if (rows[i].ID.length == baselen) {
//        cache.districtnumber[rows[i].ID] = {data: rows[i], child: {}};
//    } else(rows[i].ID.length > baselen)
//    {
//        if (baselen == 2) {
//            if (rows[i].ID.length == 4) {
//                cache.districtnumber[rows[i].ID.substr(0, 2)][rows[i].ID.substr(2, 2)] = {data: rows[i], child: {}};
//            } else if (rows[i].ID.length == 6) {
//                cache.districtnumber[rows[i].ID.substr(0, 2)][rows[i].ID.substr(2, 2)][rows[i].ID.substr(4, 2)] = {data: rows[i], child: {}};
//            }
//        }
//    }
//}
db.closeSync();
module.exports = cache;
