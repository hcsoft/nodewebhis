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
                    $scope.modelval = $scope.default;
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
                localModel: "=ngModel",
                placeholder:'@?',
                required:'@?'
            },
            controller: function ($scope) {
                $scope.dateOptions = {
                    formatYear: 'yyyy',

                    startingDay: 1,
                    'showWeeks': false,
                    'format-day-title': 'yyyy年MMMM',
                    'max-mode':'day'
                };
                $scope.opened = false;
                $scope.open = function ($event) {
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
                treemodel: "=treeModel",
                selected: "=selectedNode"
            },
            controller: function ($scope, cache) {
                $scope.treedata = [];
                $.each($scope.treemodel, function (i, v) {
                    $scope.treedata.push(v);
                });
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
                };
                $scope.treeselected = null;
                $scope.treeliclick = function (data) {
                    $scope.treeselected = data;
                    return false;
                };
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
    }]).
    directive('appOrgselect', [function () {
        return {
            scope: {
                model: "=?ngModel",
                level: "@?",
                parentid: '=?',
                lastselect: "=?",
                disable: "=?"
            },
            controller: function ($scope, cache) {
                $scope.options = [];

                var rootid = '00000000000000';
                $.each(cache.district, function (k, v) {
                    rootid = k;
                    return;
                });
                var lens = [12, 9, 6, 4];
                for (var i = lens.length - 1; i > -1; i--) {
                    if (lens[i] < rootid.length) {
                        lens.pop();
                    }
                }
                getopts({child: cache.district});
                function getopts(src, space) {
                    $.each(src.child, function (i, v) {
                        if ($scope.level == v.data.level) {
                            if ($scope.filter) {
                                if (v.data.parentid == $scope.filter)
                                    $scope.options.push(v);
                            } else {
                                $scope.options.push(v);
                            }
                            v.parent = getdistrict(v.data.parentid, {child: cache.district});
                        } else {
                            getopts(v);
                        }
                    });
                }

                function getdistrict(id, district) {
                    $.each(district, function (key, val) {
                        if (key != id) {
                            if (id.substr(0, key.length) == key) {
                                return  getdistrict(id, val);
                            }
                        } else {
                            return  val.data;
                        }
                    });
                }

                $scope.$watch("parentid", function (newvalue, oldvalue) {
                    $scope.filteredflag = false;
                });
                $scope.filterparent = function (value, index) {
                    var ret = false;
                    if (!$scope.parentid) {
                        ret = true;
                    } else {
                        ret = value.data.parentid == $scope.parentid;
                    }
                    if (!$scope.filteredflag) {
                        if ($scope.parentid) {
                            if (value.data.parentid == $scope.parentid) {
                                $scope.model = value.data.id;
                                $scope.filteredflag = true;
                            }
                        } else {
                            $scope.model = value.data.id;
                            $scope.filteredflag = true;
                        }
                    }
                    return ret;
                };
                $scope.isdisabled = function () {
                    if ($scope.disable) {
                        return "disable='disable'";
                    } else {
                        return "";
                    }
                }

            },
            templateUrl: 'tpl/directivetpl/orgselect.html'
        };
    }]).
    directive('appGrid', [function () {
        return {
            scope: {
                queryname: '=?',
                querydata: '=?',
                querycfg: '=?',
                querytype: '=?',
                querytypeoptions: '=?'
            },
            controller: function ($scope, cache, $http) {
                $scope.querytype = null;
                $scope.querytypeoptions = [];
                //列表配置
                $scope.colDef = [];
                /* 获取配置 */
                $http({
                    method: 'POST',
                    url: '/query/init',
                    data: {queryname: $scope.queryname}
                }).success(function (data, status, headers, config) {
                    $scope.querycfg = data;
                    var lastcode = null;
                    var columnDefs = [
                        {field: 'rownum', displayName: '序号', width: "40px", cellClass: "center"}
                    ];
                    for (var i = 0; i < $scope.querycfg.cols.length; i++) {
                        var item = $scope.querycfg.cols[i];
                        if (item.isquery) {
                            $scope.querytypeoptions.push({value: item.code, text: item.name});
                            lastcode = item.code;
                        }
                        if (item.display) {
                            var cfg = eval("(" + item.cfg + ")");
                            cfg.field = item.code;
                            cfg.displayName = item.name;
                            columnDefs.push(cfg);
                        }
                    }
                    $scope.colDef = columnDefs;
                    $scope.querytype = lastcode;
                });

                $scope.gridOptions = {
                    data: 'querydata.data',
                    columnDefs: "colDef"
                };
                $scope.querydata = {data: [], page: {pagenum: 1, pagesize: 15, rowcount: 0, pagecount: 0}}

            },
            templateUrl: 'tpl/directivetpl/grid.html'
        };
    }]).
    directive('loaddefault', ['cache', '$filter', '$http','$parse', function (cache, $filter, $http,$parse) {
        return {
            link: function ($scope, element, attrs) {
                $scope.$watch(attrs['ngModel'], function (newval, oldval) {
                    if (newval) {
                        $http({
                            method: 'POST',
                            url: '/main/getdefault',
                            data: {district: newval, tablename: attrs['defaultname']}
                        }).success(function (retdata, status, headers, config) {
                            var data = retdata.data;
                            $.each(data, function (key, val) {
                                data[key] = eval(val);
                            });
                            var exestr = "$scope." + attrs['loaddefault'] + " = $.extend (data,$scope." + attrs['loaddefault'] + ")";
                            eval(" console.log(data)");
                            var defaultdata = $parse(attrs['loaddefault']);
                            console.log(defaultdata);
                            if (attrs['cover'] == 'true') {
//                                $.extend (defaultdata,data);
                                eval("$.extend ($scope." + attrs['loaddefault'] + ",data);");
                            } else {
//                                $.extend (data,defaultdata);
//                                defaultdata = data;
                                eval("$.extend (data,$scope." + attrs['loaddefault'] + ");");
                                eval("$scope." + attrs['loaddefault'] + " = data ;");
                            }
                        });
                    }
                });
            }
        };
    }]).
    directive('appDiseaselist', [function () {
        return {
            scope: {
                style:"@?",
                class:"@?",
                modelval: "=ngModel",
                codetype: '@?',
                otherval:'@?',
                exclude:'@?',
                otherplaceholder:'@?',
                placeholder:'@?',
                addtext:"@?"
            },
            controller: function ($scope, cache) {
                //处理列表值
                $scope.codelist = cache.codelist[$scope.codetype].list;
                if($scope.exclude){
                    var idxs = $scope.exclude.split(",");
                    for(var i = idxs.length-1 ; i >-1;i--){
                        $scope.codelist.splice(i,1);
                    }
                }
                $scope.add = function(){
                    if(!$scope.modelval){
                        $scope.modelval = [];
                    }
                    $scope.modelval.push({code:13});
                };
                $scope.addtlb = function(){
                    if(!$scope.modelval){
                        $scope.modelval = [];
                    }
                    $scope.modelval.push({code:3});
                };
                $scope.addhyp = function(){
                    if(!$scope.modelval){
                        $scope.modelval = [];
                    }
                    $scope.modelval.push({code:2});
                };
                $scope.del = function(idx){
                    $scope.modelval.splice(idx,1);
                };
            },
            link: function ($scope, element, attrs) {

            },
            templateUrl: 'tpl/directivetpl/diseaselist.html'
        };
    }]).
    directive('appHislist', [function () {
        return {
            scope: {
                style:"@?",
                class:"@?",
                modelval: "=ngModel",
                codetype: '@?',
                otherval:'@?',
                exclude:'@?',
                otherplaceholder:'@?',
                placeholder:'@?',
                addtext:"@?"
            },
            controller: function ($scope, cache) {
                //处理列表值
                $scope.codelist = cache.codelist[$scope.codetype].list;
                if($scope.exclude){
                    var idxs = $scope.exclude.split(",");
                    for(var i = idxs.length-1 ; i >-1;i--){
                        $scope.codelist.splice(i,1);
                    }
                }
                $scope.add = function(){
                    if(!$scope.modelval){
                        $scope.modelval = [];
                    }
                    $scope.modelval.push({code:13});
                };
                $scope.addtlb = function(){
                    if(!$scope.modelval){
                        $scope.modelval = [];
                    }
                    $scope.modelval.push({code:3});
                };
                $scope.addhyp = function(){
                    if(!$scope.modelval){
                        $scope.modelval = [];
                    }
                    $scope.modelval.push({code:2});
                };
                $scope.del = function(idx){
                    $scope.modelval.splice(idx,1);
                };
            },
            link: function ($scope, element, attrs) {

            },
            templateUrl: 'tpl/directivetpl/hislist.html'
        };
    }]);
