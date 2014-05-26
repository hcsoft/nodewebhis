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
console.log("........................." + pool.connectstr);
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
db.closeSync();
module.exports = cache;
