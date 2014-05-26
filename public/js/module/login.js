'use strict';

/* Controllers */

var LoginCtrl = function ($scope, $http,$cookies, $location, loginService) {
    $scope.data = {};
    $http({
        method: 'POST',
        url: '/islogin'
    }).success(function (data, status, headers, config) {
        if (data.success == true) {
            $location.path('/main');
            $location.replace();
        }
    });
    $scope.login = function () {
        var param = {user_id: $scope.data.user_id, password: md5($scope.data.password)};
        $http({
            method: 'POST',
            url: '/login',
            params: param
        }).success(function (data, status, headers, config) {
            if (data.success == true) {
                $location.path('/main');
                $location.replace();
            } else {
                $scope.data = data;
            }
        }).error(function (data, status, headers, config) {
            $scope.data.msg = '登录异常!';
        });
    };
};