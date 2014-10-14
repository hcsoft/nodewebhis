var HealthFileCtrl = function ($scope, $http, $cookies, $location,$modal,$log,$timeout,$element,$locale,dialog) {
//    console.log(dialog);
    $scope.dialog = dialog;
    $scope.queryname = '健康体检';
    $scope.query = function (params) {
        params.page = $scope.querydata['page'];
        $http({
            method: 'POST',
            url: '/query/query',
            data: {queryname: $scope.queryname, params: params}
        }).success(function (data, status, headers, config) {
//            console.log(data);
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
};

