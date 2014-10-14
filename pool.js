
/*
// oracle pool
var genericPool = require('generic-pool');
// This is the 'nearinfinity' driver: `npm install oracle`
var oracle = require('oracle');
conf = {
    "hostName": "localhost",
    "port": 1521,
    "user": "NODEHIS",
    "password": "111111",
    "database": "xe"
}

var pool = genericPool.Pool({
    name: 'nodehis',
    log: true,
    max: 20,
    create: function(callback) {
        var settings = {
            hostname: conf.hostName,
            port: conf.port,
            database: conf.database,
            user: conf.user,
            password: conf.password
        }
        new oracle.connect(settings, function(err, connection) {
            callback(err, connection);
        });
    },
    destroy: function(connection) {
        connection.close();
    }
});
module.exports = pool;
    */

// sqlserver pool
var Pool = require("odbc").Pool
    ,pool = new Pool()
    , cn = "DRIVER={SQL Server};Server=localhost,1433;Database=webhis;User Id=sa;Password=11111111;"
    ;

module.exports = {
    'pool':pool,
    'connectstr' :cn,
    'open':function(callback){
        var pool = new Pool();
        pool.open(cn, callback);
    }
};

