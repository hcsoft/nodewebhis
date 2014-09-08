var HealthFileCtrl = function ($scope, $http, $cookies, $location,$modal,$log,$timeout,$element,dialog) {
    console.log(dialog);
    $scope.dialog = dialog;
    $scope.queryname = "居民健康档案";
    $scope.querytype = null;
    $scope.querytypeoptions = [];
    /* 获取配置 */
    $http({
        method: 'POST',
        url: '/query/init',
        data: {queryname: $scope.queryname}
    }).success(function (data, status, headers, config) {
        console.log(data);
        $scope.querycfg = data;
        var lastcode = null;
        var columnDefs = [
            {field: 'rownum', displayName: '序号',width:"40px",cellClass:"center"}
        ];
        for (var i = 0; i < $scope.querycfg.cols.length; i++) {
            var item = $scope.querycfg.cols[i];
            if (item.isquery) {
                $scope.querytypeoptions.push({value: item.code, text: item.name});
                lastcode = item.code;
            }
            if (item.display) {
                var cfg = eval("(" +item.cfg+")");
                cfg.field = item.code;
                cfg.displayName = item.name;
                columnDefs.push(cfg);
            }
        }
        $scope.colDef = columnDefs;
        $scope.querytype = lastcode;
        console.log(lastcode);
    });
    //列表配置
    $scope.colDef = [];
    $scope.gridOptions = {
        data: 'querydata.data',
        columnDefs: "colDef"
    };
    $scope.querydata = {data:[],page:{pagenum:1,pagesize:15,rowcount:0,pagecount:0}}
    $scope.query = function (params) {
        params.page = $scope.querydata['page'];
        $http({
            method: 'POST',
            url: '/query/query',
            data: {queryname: $scope.queryname, params: params}
        }).success(function (data, status, headers, config) {
            console.log(data);
            $scope.querydata = data;
        });
    };
    //查询
    $scope.issingle = true;
    $scope.singlequery = function () {
        $scope.issingle = true;
        var params = {};
        params[$scope.querytype] = $scope.queryvalue;
        $scope.query(params);
    };
    //高级查询按钮
    $scope.complexWindowDisplay = "none";
    $(".newdialog").draggable();
    $scope.switchComplexQuery = function(){
        if($scope.complexWindowDisplay == "none"){
            $scope.complexWindowDisplay = "block"
        }else{
            $scope.complexWindowDisplay = "none"
        }
    };
    $scope.complexWindow = function(){
        $scope.switchComplexQuery();
    };
    $scope.complexparams={};
    $scope.complexquery = function () {
        $scope.issingle = false;
        var params = $scope.complexparams;
        params[$scope.querytype] = $scope.queryvalue;
        $scope.query(params);
    };
    $scope.$watch("querydata.page.pagenum", function(newval,oldval) {
        if(newval !== oldval){
            if($scope.issingle){
                $scope.singlequery();
            }else{
                $scope.complexquery();
            }
        }
    }, true);

    //行政区划树
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

};

