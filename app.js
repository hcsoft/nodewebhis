var express = require('express');
var path = require('path');
var favicon = require('static-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var session = require('express-session');

var routes = require('./routes/login');
var main = require('./routes/main');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(favicon());
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded());
app.use(cookieParser('shhhh, very secret'));
app.use(session({
    cookie: {
        //path: "/",
        httpOnly: false,
//        maxAge  : 24*60*60*1000
        maxAge  : 10*1000
        //expires: new Date(Date.now() + 10000)
    },
    name:'hcsoft',
    secret: 'hcsoft2013'
}));

app.use(function(req, res, next){
    if ('HEAD' == req.method ||'GET' == req.method|| 'OPTIONS' == req.method || "/logout"==req.url) return next();
    if(req.session.user_id){
        req.session._garbage = Date();
        req.session.touch();
    }
    next();
});


app.use('/main',function(req, res, next){
    console.log(req.session.user_id);
    console.log(req.session);
    if ("POST"==req.method && !req.session.user_id ) {
//        res.json({"islogin":false});
        res.send(401);
    } else {
        next();
    }
});


app.use(express.static(path.join(__dirname, 'public')));

app.use('/', routes);
app.use('/main', main);

/// catch 404 and forwarding to error handler
app.use(function(req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});

/// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
    app.use(function(err, req, res, next) {
        res.status(err.status || 500);
        res.render('error', {
            message: err.message,
            error: err
        });
    });
}

// production error handler
// no stacktraces leaked to user
app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
        message: err.message,
        error: {}
    });
});


module.exports = app;
