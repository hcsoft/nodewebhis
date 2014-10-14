'use strict';

/* Services */


angular.module('myApp.services', []).factory('loginService', function () {
    var loginService = {};
    loginService.setLogined = function (flag) {
        loginService.logined = flag;
    };
    return loginService;
}).factory('cache', function () {
    var cache = {};
    //加载默认值
    cache.loadDefault = function (disid, tablename) {
        var ret = null;
        if (cache.data && cache.data.defaults) {
            $.each(cache.data.defaults, function (key, val) {
                if (disid && disid.substr(0, key.length) == key) {
                    ret = {};
                    $.extend(ret,val[tablename]);
                    return false;
                }
            })
        }
        return ret;
    };
    return cache;
}).factory('httpRequestInterceptor', function ($q) {
    return {
        'response': function (response) {
            return response;
        },
        'responseError': function (response) {
            //TODO 这里增加统一的异常处理
            //TODO 登录失败的处理
            return response;
        }
    };
}).factory('dialog', ['$modal', "$log", function ($modal, $log) {
    var dialog = {
        btn: null,
        result: null,
        height:500,
        openwindow: function (btn, isedit) {
            this.btn = btn;
            var modalInstance = $modal.open({
                templateUrl: btn.tplurl,
                controller: ModalInstanceCtrl,
                size: btn.window.size,
                modal: false,
                backdrop: 'static',
                resolve: {
                    curbtn: function () {
                        return btn;
                    },
                    isedit: function () {
                        return isedit;
                    }
                }
            });
            modalInstance.result.then(function (ret) {
                dialog.result = ret;
            }, function () {
                $log.info('Modal dismissed at: ' + new Date());
            });
        }
    };
    return dialog;
}]);
