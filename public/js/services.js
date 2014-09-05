'use strict';

/* Services */


angular.module('myApp.services', []).factory('loginService', function() {
    var loginService = {};
    loginService.setLogined = function(flag) {
        loginService.logined=flag;
    };
    return loginService;
}).factory('cache', function() {
    var cache = {};
	return cache;
}).factory('httpRequestInterceptor', function($q) {
    return {
        'response': function(response) {
            return response;
        },
        'responseError': function(response) {
            //TODO 这里增加统一的异常处理
            //TODO 登录失败的处理
            return response;
        }
    };
});
