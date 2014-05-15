var express = require('express');
var router = express.Router();


function checkAuth(req, res, next) {
    if (!req.session.user_id) {
        res.send('You are not authorized to view this page');
    } else {
        next();
    }
}
/* GET home page. */
router.get('/', function (req, res) {
    var pool = require('../pool.js');
    console.log(pool);
    console.log("aaaaaaaaaaaaaaaaaas");
    pool.acquire(function (err, client) {
        if (err) {
            // handle error - this is generally the err from your
            // factory.create function
            console.log(err);
        }
        else {
            client.execute("SELECT * FROM webhis.test ", [], function (err, results) {
                console.log("ttttttttttttttttttttttttt");
                if (err) {
                    console.log("Error executing query:", err);
                    return;
                }
                console.log("ttttttttttttttttttttttttt");
                pool.release(client);
                console.log(results);
                client.close(); // call only when query is finished executing
            });
        }
    });
    res.render('login', { title: '测试' });
});

router.post('/login', function (req, res) {
    var post = req.body;
    if (post.user === 'john' && post.password === 'johnspassword') {
        req.session.user_id = johns_user_id_here;
        res.redirect('/my_secret_page');
    } else {
        res.send('Bad user/pass');
    }
});

router.get('/logout', function (req, res) {
    delete req.session.user_id;
    res.redirect('/');
});

module.exports = router;
