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
        console.log(data);
//        if (data.success == false) {
//            $location.path('/login');
//            $location.replace();
//        }
    });
    $scope.menus = [
        {
            text: '系统管理',
            icon: 'img/icons/setting.png',
            test: {
                background: "url(img/setting.png) norepeat"
            },
            child: [
                {
                    text: '菜单管理',
                    img: 'img/menu/9.gif',
                    url: 'systemmanager/menumanager.html'
                },
                {
                    text: '模块管理',
                    img: 'img/menu/4.gif',
                    url: 'systemmanager/modulemanager.html'
                },
                {
                    text: '用户管理',
                    img: 'img/menu/7.gif',
                    url: 'systemmanager/users.html'
                },
                {
                    text: '角色管理',
                    img: 'img/menu/7.gif',
                    url: 'systemmanager/rolemanager.html'
                },
                {
                    text: '用户管理测试',
                    img: 'img/menu/7.gif',
                    url: 'html/common/common.html',
                    mod: 'user'
                }
            ]
        },
        {
            text: '主要功能',
            icon: 'img/icons/hypertension_manage_16_16.png',
            child: [
                {
                    text: '订单管理',
                    img: 'img/menu/female_business_01.gif',
                    url: 'order/ordermanager.html'
                }
            ]
        },
        {
            text: '其他功能',
            icon: 'img/icons/query.png',
            child: [
                {
                    text: '统计查询',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询1',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询2',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询11',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询3',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询4',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询5',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询6',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询7',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询8',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询9',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询10',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询11',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询12',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                },
                {
                    text: '统计查询13',
                    img: 'img/menu/25.gif',
                    url: 'html/query.html'
                }
            ]
        }
    ];
    $scope.panes = [];
    $scope.clickmenu = function (name, url) {
        for (var i = 0; i < $scope.panes.length; i++) {
            $scope.panes[i].active = false;
            if (name == $scope.panes[i].title) {
                $scope.panes[i].active = true;
                return;
            }
        }
        $scope.panes[$scope.panes.length] = {
            title: name,
            active: true,
            url: url
        };
    };
    $scope.closetab = function (index) {

        $scope.panes.splice(index, 1);
        /*
         for (var i = 0; i < $scope.panes.length; i++) {
         if (text == $scope.panes[i].title) {
         $scope.panes.splice(i, 1);
         $scope.$digest();
         return;
         }
         }*/
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