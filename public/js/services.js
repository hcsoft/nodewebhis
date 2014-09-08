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
}).factory('dialog', ['$modal',"$log",function($modal,$log) {
    var dialog={
        btn:null,
        result : null,
        openwindow : function (btn) {
            this.btn = btn;
            var modalInstance = $modal.open({
                templateUrl:btn.tplurl,
                controller: ModalInstanceCtrl,
                size: btn.window.size,
                modal: false,
                backdrop:'static',
                resolve: {
                    curbtn: function () {
                        return btn;
                    }
                }
            });
            modalInstance.result.then(function (ret) {
                this.result = ret;
            }, function () {
                $log.info('Modal dismissed at: ' + new Date());
            });
        }
    };
    return dialog;
}]);
