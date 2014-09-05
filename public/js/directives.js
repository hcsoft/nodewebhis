'use strict';

/* Directives */


angular.module('myApp.directives', []).
    directive('appVersion', ['version', function (version) {
        return function ($scope, elm, attrs) {
            elm.text(version);
        };
    }]).
    directive('appRadio', [function () {
        return {
            require: 'ngModel',
//            transclude: true,
            restrict: 'A',
            scope: {
                codetype: '@',
                codename: '@ngModel',
                modelval: "=ngModel",
                default: '@'
            },
            controller: function ($scope, cache) {
                $scope.codelist = cache.codelist[$scope.codetype].list;

            },
            link: function ($scope, element, attrs, modelctrl) {
                console.log(modelctrl);
                if ($scope.default) {
                    $scope.modelval = {data:$scope.default};
                }else{
                    $scope.modelval = {data:$scope.null};
                }
            },
            templateUrl: 'tpl/directivetpl/radio.html'
        };
    }]).
    directive('appCheckbox', [function () {
        return {
            transclude: true,
            require: 'ngModel',
            restrict: 'A',
            scope: {
                codetype: '@',
                codename: '@ngModel',
                modelval: "=ngModel",
                uncheckval: '@',
                default: '@'
            },
            controller: function ($scope, cache) {
                $scope.codelist = cache.codelist[$scope.codetype].list;
                if ($scope.default) {
                    $scope.modelval = {};
                    $scope.modelval[$scope.default] = true;
                }
            },
            link: function ($scope, element, attrs, modelctrl) {
                if ($scope.uncheckval) {
                    $scope.$watch(function () {
                        return $scope.modelval;
                    }, function (newval, oldval) {
                        var changed = null;
                        var checked = '';
                        $.each(newval, function (i, v) {
                            if (v != oldval[i]) {
                                changed = i;
                            }
                            if (v == true) {
                                checked = checked + ',' + i;
                            }
                        });
                        if (checked.length == 0) {
                            newval[$scope.uncheckval] = true;
                        }
                        if (newval[changed] == true) {
                            if (changed == $scope.uncheckval) {
                                $.each(newval, function (i, v) {
                                    newval[i] = false;
                                });
                                newval[$scope.uncheckval] = true;
                            } else {
                                newval[$scope.uncheckval] = false;
                            }
                        }

                    }, true);
                }
            },
            templateUrl: 'tpl/directivetpl/checkbox.html'
        };
    }]);
