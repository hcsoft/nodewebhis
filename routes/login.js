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
router.get('/', function(req, res) {
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
