var HealthFileCtrl = function ($scope, $http, $cookies, $location,$modal,$log,$timeout,$element) {
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
    $scope.clickbutton = function(btncfg){
        alert(btncfg);
    }

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
    //处理按钮
    $scope.curbtn = {};
    $scope.openwindow = function (btn) {
        $scope.curbtn = btn;
        var modalInstance = $modal.open({
//            templateUrl: 'myModalContent.html',
            templateUrl:btn.tplurl,
            controller: ModalInstanceCtrl,
            size: btn.window.size,
            modal: false,
            backdrop:'static',
            resolve: {
                curbtn: function () {
                    return $scope.curbtn;
                }
            }
        });
        modalInstance.result.then(function (ret) {
            $scope.windowret = ret;
        }, function () {
            $log.info('Modal dismissed at: ' + new Date());
        });
    };
    $scope.opened = {};
    $scope.open = function($event,code) {
        $event.preventDefault();
        $event.stopPropagation();
        $scope.opened[code] = true;
    };

    $scope.dateOptions = {
        formatYear: 'yy',
        startingDay: 1
    };

    $scope.ret = {};
    $scope.$watch("ret", function (newvalue, oldvalue) {
        console.log(newvalue, oldvalue);
        $.each(newvalue, function (i, v) {
            console.log(i, v);
        });
    });
    $scope.teststr = '测试!!!';

};

var ModalInstanceCtrl = function ($scope, $modalInstance, curbtn) {
    $scope.curbtn = curbtn;
    $scope.ret = {

    };
    $scope.getTextStyle = function(item,window){
        if(item && item.textstyle){
            return item.textstyle +";display:inline-block;text-align:right;";
        }else{
            if(window.textwidth){
                return "width:"+window.textwidth+"px;display:inline-block;text-align:right;";
            }else{
                return "width:100px;display:inline-block;text-align:right;";
            }
        }
    };
    $scope.initselect = function(item,obj){
        var type = item.coltype;
        if(type=='multilineradio' || type=='multiradio'){
            if(!$scope.ret[item.code])
                $scope.ret[item.code]={};
            if(item.defaultval == ""+obj.value){
                if(typeof $scope.ret[item.code][obj.value] === 'undefined')
                    $scope.ret[item.code][obj.value] = true;
            }
        }else if(type=='lineradio' || type=='radio'){
            if(!$scope.ret[item.code])
             $scope.ret[item.code] = item.defaultval;
        }
    };
    $scope.getWindowWidth = function(width){
        if(width){
            return width+"px";
        }else{
            return "100%";
        }
    }
    $scope.ok = function () {
        $modalInstance.close($scope.ret);
    };

    $scope.cancel = function () {
        $modalInstance.dismiss('cancel');
    };
//    $scope.today = function() {
//        $scope.dt = new Date();
//    };
//    $scope.today();
//
//    $scope.clear = function () {
//        $scope.dt = null;
//    };
//
//    // Disable weekend selection
//    $scope.disabled = function(date, mode) {
//        return ( mode === 'day' && ( date.getDay() === 0 || date.getDay() === 6 ) );
//    };
//
//    $scope.toggleMin = function() {
//        $scope.minDate = $scope.minDate ? null : new Date();
//    };
//    $scope.toggleMin();
    $scope.opened = {};
    $scope.open = function($event,code) {
        $event.preventDefault();
        $event.stopPropagation();
        $scope.opened[code] = true;
    };

    $scope.dateOptions = {
        formatYear: 'yy',
        startingDay: 1
    };

//    $scope.initDate = new Date('2016-15-20');
//    $scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate'];
//    $scope.format = $scope.formats[0];
};