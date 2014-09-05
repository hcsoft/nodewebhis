'use strict';

/* Directives */


angular.module('myApp.directives', []).
    directive('appVersion', ['version', function (version) {
        return function (scope, elm, attrs) {
            elm.text(version);
        };
    }]).
    directive('appShowwhen', ['version', function (version) {
        return function (scope, elm, attrs) {
            $scope.$watch(attrs['appHidewhen'],function(value){
                if(attrs['showvalue']==value){
                    elm.show();
                }else{
                    elm.hide();
                }
            })
        };
    }]).
    directive('appRadio', [function () {
        return {
            require: [ '^ngModel'],
            transclude: true,
            restrict: 'A',
            scope: {
                codetype: '@',
                codename: '@ngModel',
                modelval :"=ngModel",
                default:'@'
            },
            controller: function ($scope, cache) {
                $scope.codelist = cache.codelist[$scope.codetype].list;
                if($scope.default){
                    $scope.modelval = $scope.default;
                }
            },
            templateUrl: 'tpl/directivetpl/radio.html'
        };
        return { link: link};
    }]).
    directive('appCheckbox', [function () {
        return {
            transclude: true,
            require: 'ngModel',
            restrict: 'A',
            scope: {
                codetype: '@',
                codename: '@ngModel',
                modelval :"=ngModel",
                uncheckval: '@',
                default:'@'
            },
            controller: function ($scope, cache) {
                $scope.codelist = cache.codelist[$scope.codetype].list;
                if($scope.default){
                    $scope.modelval = {};
                    $scope.modelval[$scope.default] = true;
                }
            },
            link : function(scope, element, attrs,modelctrl){
//                scope.$watch("modelval", function (newvalue, oldvalue) {
//                    console.log(newvalue,oldvalue);
//                    modelctrl.$setViewValue(newvalue);
//                });

                if(scope.uncheckval){

                }
            },
            templateUrl: 'tpl/directivetpl/checkbox.html'
        };
        return { link: link};
    }]);
