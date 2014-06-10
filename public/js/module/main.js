'use strict';
var MainCtrl = function ($scope, $http, $location,$cookies, loginService) {
    $http({
        method: 'POST',
        url: '/islogin'
    }).success(function (data, status, headers, config) {
        if (data.success == false) {
            $location.path('/login');
            $location.replace();
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
    }
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
    $scope.test = function(){
        $http({
            method: 'POST',
            url: '/main/init'
        }).success(function (data, status, headers, config) {
            console.log("success",data)
        }).error(function (data, status, headers, config) {
            console.log("error",data)
        });
    };
    $scope.test1 = function(){
        $http({
            method: 'POST',
            url: '/test'
        }).success(function (data, status, headers, config) {
            console.log("success",data)
        }).error(function (data, status, headers, config) {
            console.log("error",data)
        });
    };
    //获取菜单等相关信息
    $http({
        method: 'POST',
        url: '/main/init'
    }).success(function (data, status, headers, config) {
        $scope.menus =data.data;
    });
    $scope.panes = [];
    $scope.clickmenu = function (menu) {
        console.log(menu);
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
        console.log(menu);
        console.log(parentindex);
        var subpane = $scope.panes[parentindex];
        for (var i = 0; i < subpane.panes.length; i++) {
            subpane.panes[i].active = false;
            if (menu.name == subpane.panes[i].name) {
                $scope.panes[parentindex].panes[i].active = true;
                return;
            }
        }
        menu.active = true;
        $scope.panes[parentindex].panes[$scope.panes[parentindex].panes.length] = menu;

    };
    $scope.closetab = function (index) {
        console.log(index);
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

};