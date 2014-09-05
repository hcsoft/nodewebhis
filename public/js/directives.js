'use strict';

/* Directives */


angular.module('myApp.directives', []).
    directive('appVersion', ['version', function (version) {
        return function (scope, elm, attrs) {
            elm.text(version);
        };
    }]).
    directive('appRadio', [function () {
        return {
            transclude: true,
            restrict: 'A',
            scope: {
                codetype: '@',
                codename: '@',
                ret: '&',
                default:'@'
            },
            controller: function ($scope, cache) {
                $scope.codelist = cache.codelist[$scope.codetype].list;
                if($scope.default){
                    $scope.ret[$scope.codename] = $scope.default;
                }
            },
            templateUrl: 'tpl/directivetpl/radio.html'
        };
        return { link: link};
    }]).
    directive('appCheckbox', [function () {
        return {
            transclude: true,
            restrict: 'A',
            scope: {
                codetype: '@',
                codename: '@',
                ret: '&',
                uncheckval: '@',
                default:'@'
            },
            controller: function ($scope, cache) {
                $scope.codelist = cache.codelist[$scope.codetype].list;
                if($scope.default){
                    $scope.ret[$scope.codename] = {};
                    $scope.ret[$scope.codename][$scope.default] = true;
                }

            },
            link : function($scope, element, attrs){
                console.log(1111,$scope.uncheckval,$scope.ret['test']);
                if($scope.uncheckval){
//                    $scope.$watch($scope.ret[$scope.codename], function (newvalue, oldvalue) {
                    console.log("???????????????????",$scope.$parent)
                    $scope.$watch("ret", function (newvalue, oldvalue) {
                        console.log(newvalue, oldvalue);
                        $.each(newvalue, function (i, v) {
                            console.log(i, v);
                        });
                    });
                }
            },
            templateUrl: 'tpl/directivetpl/checkbox.html'
        };
        return { link: link};
    }]);
