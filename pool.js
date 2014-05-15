var genericPool = require('generic-pool');
// This is the 'nearinfinity' driver: `npm install oracle`
var oracle = require('oracle');
conf = {
    "hostName": "localhost",
    "port": 1521,
    "user": "SYSTEM",
    "password": "111111",
    "database": "xe"
}
var query = "SELECT * FROM test";

var pool = genericPool.Pool({
    name: 'webhis',
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