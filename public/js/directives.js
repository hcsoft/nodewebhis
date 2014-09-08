'use strict';

/* Directives */


angular.module('myApp.directives', []).
    directive('appVersion', ['version', function (version) {
        return function ($scope, elm, attrs) {
            elm.text(version);
        };
    }]).
    directive('appListshow', [function () {
        return {
            scope: {
                codetype: '@'
            },
            controller: function ($scope, cache) {
                $scope.codelist = cache.codelist[$scope.codetype].list;
            },
            templateUrl: 'tpl/directivetpl/listshow.html'
        };
    }]).
    directive('appRadio', [function () {
        return {
            scope: {
                codetype: '@',
                codename: '@ngModel',
                modelval: "=ngModel",
                default: '@'
            },
            controller: function ($scope, cache) {
                $scope.codelist = cache.codelist[$scope.codetype].list;
                //处理默认值
                if ($scope.default) {
                    $scope.modelval =$scope.default;
                }
            },
            templateUrl: 'tpl/directivetpl/radio.html'
        };
    }]).
    directive('appCheckbox', [function () {
        return {
            require: 'ngModel',
            scope: {
                codetype: '@',
                codename: '@ngModel',
                modelval: "=ngModel",
                uncheckval: '@',
                default: '@'
            },
            controller: function ($scope, cache) {
                //处理列表值
                $scope.codelist = cache.codelist[$scope.codetype].list;
            },
            link: function ($scope, element, attrs, modelctrl) {
                //处理默认值
                if ($scope.default) {
                    $scope.modelval = {};
                    $scope.modelval[$scope.default] = true;
                }
                //处理互斥的选项
                if ($scope.uncheckval) {
                    $scope.$watch("modelval", function (newval, oldval) {
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
                        //如果都没选择的时候,选择互斥选项
                        if (checked.length == 0) {
                            newval[$scope.uncheckval] = true;
                        }
                        //如果其中一个被选中
                        if (newval[changed] == true) {
                            //如果是互斥选项,其他全部取消选择
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
    }]).
    directive('appDate', [function () {
        return {
            scope: {
                codename: '@ngModel',
                localModel: "=ngModel"
            },
            controller: function ($scope) {
                $scope.dateOptions  = {
                    formatYear: 'yyyy',
                    startingDay: 1,
                    'show-weeks':false,
                    'format-day-title':'yyyy年MMMM'
                };
                $scope.opened =false;
                $scope.open = function($event) {
                    $event.preventDefault();
                    $event.stopPropagation();

                    $scope.opened = true;
                };
            },
            templateUrl: 'tpl/directivetpl/date.html'
        };
    }]).
    directive('appDropcheckbox', [function () {
        return {
            require: 'ngModel',
            scope: {
                codetype: '@',
                codename: '@ngModel',
                modelval: "=ngModel",
                uncheckval: '@',
                default: '@'
            },
            controller: function ($scope, cache) {
                //处理列表值
                $scope.codelist = cache.codelist[$scope.codetype].list;
            },
            link: function ($scope, element, attrs, modelctrl) {
                //处理默认值
                if ($scope.default) {
                    $scope.modelval = {};
                    $scope.modelval[$scope.default] = true;
                }
                //处理互斥的选项
                if ($scope.uncheckval) {
                    $scope.$watch("modelval", function (newval, oldval) {
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
                        //如果都没选择的时候,选择互斥选项
                        if (checked.length == 0) {
                            newval[$scope.uncheckval] = true;
                        }
                        //如果其中一个被选中
                        if (newval[changed] == true) {
                            //如果是互斥选项,其他全部取消选择
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
            templateUrl: 'tpl/directivetpl/dropcheckbox.html'
        };
    }]).
    directive('appTree', [function () {
        return {
            require: 'ngModel',
            scope: {
                treemodel:"=treeModel",
                selected:"=selectedNode"
            },
            controller: function ($scope, cache) {
                $scope.treeOptions = {
                    nodeChildren: "child",
                    dirSelectable: true  };

                $scope.delete = function (data) {
                    data.nodes = [];
                };
                $scope.add = function (data) {
                    var post = data.nodes.length + 1;
                    var newName = data.name + '-' + post;
                    data.nodes.push({name: newName, nodes: []});
                };
                $scope.treeclick = function (data, event) {
                    data.hide = !data.hide;
                }
                $scope.treeselected = null;
                $scope.treeliclick = function (data) {
                    $scope.treeselected = data;
                    return false;
                }
                $scope.getclass = function (data) {
                    var ret = '';
                    if (data.isleaf) {
                        ret = " leaf";
                    } else {
                        ret = $scope.treeselected === data ? 'selected' : '';
                        if (!data.hide) {
                            ret += " open";
                        }
                    }
                    return ret;
                };
            },
            templateUrl: 'tpl/directivetpl/tree.html'
        };
    }]);
