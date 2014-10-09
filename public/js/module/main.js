'use strict';
var MainCtrl = function ($scope, $http, $location,$cookies, loginService,$modal ,cache) {
    /*基本设置*/
    $scope.select2Options = {
        placeholder: "",
        allowClear: true
    };

    $http({
        method: 'POST',
        url: '/islogin'
    }).success(function (data, status, headers, config) {
        if (data.success == false) {
            $location.path('/login');
            $location.replace();
        }else{
            $scope.user = data.user;
            //登录成功,获取菜单等相关信息
            $http({
                method: 'POST',
                url: '/main/init'
            }).success(function (data, status, headers, config) {
//                console.log(data);
                $scope.menus =data.menus;
                $scope.district = data.district;
//                $scope.codelist = data.codelist;
                cache.data = data;
                cache.district = data.district;
                cache.codelist = data.codelist;
//                console.log(cache);
            });
        }
    });
    $scope.scroll = function(length){
        $('.tabcontent .nav-tabs').animate({'scrollLeft': $('.tabcontent .nav-tabs').scrollLeft()-length});
    }
    $scope.active = function (index,base) {
        var active = $($(".tabcontent .nav-tabs > li")[index+base]);
        var parent = $( ".tabcontent .nav-tabs");
        var parentwidht =  parent.width();
        var itempostion = active.position().left;
        var scollleft = parent.scrollLeft();
        if(itempostion<0){
            active.parent().animate({'scrollLeft': itempostion});
        }else if((itempostion+active.width())>parentwidht){
            active.parent().animate({'scrollLeft':scollleft+itempostion - parentwidht +active.width()+200 });
        }
        return false;
    };
    $scope.logout = function(){
        $http({
            method: 'GET',
            url: '/logout'
        }).success(function (data, status, headers, config) {
            $location.path('/');
            $location.replace();
        }).error(function (data, status, headers, config) {
            $location.path('/');
            $location.replace();
        });
    };
    $scope.panes = [];
    $scope.clickmenu = function (menu) {
//        console.log(menu);
        for (var i = 0; i < $scope.panes.length; i++) {
            $scope.panes[i].active = false;
            if (menu.name == $scope.panes[i].name) {
                $scope.panes[i].active = true;
                return;
            }
        }
        menu.active = true;
        menu.panes = [];
        $scope.panes[$scope.panes.length] = menu;
    };
    $scope.clicksubmenu = function (parentindex,menu) {
        $script([menu.js], function () {
            var subpane = $scope.panes[parentindex];
            for (var i = 0; i < subpane.panes.length; i++) {
                subpane.panes[i].active = false;
                if (menu.name == subpane.panes[i].name) {
                    $scope.panes[parentindex].panes[i].active = true;
                    $scope.$digest();
                    return;
                }
            }
            menu.active = true;
            $scope.panes[parentindex].panes[$scope.panes[parentindex].panes.length] = menu;
            $scope.$digest();
        });
    };
    $scope.closetab = function (index) {
//        console.log(index);
        $scope.panes.splice(index, 1);
    };
    $scope.closemoduletab = function (parentindex,index) {
        $scope.panes[parentindex].panes.splice(index, 1);
    };
    /*
     // 增加tab双击事件
     $(document).on("dblclick", ".nav-tabs a", function(e) {
     $scope.closetab(e.currentTarget.innerText);
     });

     $(document).on("mousedown", ".nav-tabs a", function(e) {
     if(event.which == 3){
     $scope.closetab(e.currentTarget.innerText);
     }
     });*/

    $scope.openTask = function(){
        var modalInstance = $modal.open({
//            templateUrl: 'myModalContent.html',
            templateUrl:'/tpl/main/task.html',
            controller: taskCtrl,
            size: 'lg',
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
    $scope.taskDisplay = "none";
    $scope.switchTask = function(){
//        console.log("switchTask");
        if($scope.taskDisplay == "none"){
            $scope.taskDisplay = "block";
        }else{
            $scope.taskDisplay = "none";
        }

    };
//    $(".newdialog").draggable();

};


var taskCtrl = function ($scope, $modalInstance, curbtn) {
    $scope.curbtn = curbtn;
//    $scope.ret = {
//
//    };
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

};


var ModalInstanceCtrl = function ($scope, $modalInstance,$window, curbtn) {
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
    $scope.save = function () {
        console.log($window.submitform)
        console.log($("#submitform").$valid);
        $modalInstance.close($scope.ret);
    };

    $scope.close = function () {
        $modalInstance.dismiss('cancel');
    };

    $scope.reset = function () {
//        $modalInstance.dismiss('cancel');
    };

};