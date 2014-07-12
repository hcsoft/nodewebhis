var HealthFileCtrl = function ($scope, $http, $cookies, $location) {
    $scope.test = "测试";
    $scope.treeOptions = {
        nodeChildren: "children",
        dirSelectable: true,
        injectClasses: {
            ul: "a1",
            li: "a2",
            liSelected: "a7",
            iExpanded: "a3",
            iCollapsed: "a4",
            iLeaf: "a5",
            label: "a6",
            labelSelected: "a8"
        }
    };
    $scope.dataForTheTree =
        [
            { "name" : "Joe", "age" : "21", "children" : [
                { "name" : "Smith", "age" : "42", "children" : [] },
                { "name" : "Gary", "age" : "21", "children" : [
                    { "name" : "Jenifer", "age" : "23", "children" : [
                        { "name" : "Dani", "age" : "32", "children" : [] },
                        { "name" : "Max", "age" : "34", "children" : [] }
                    ]}
                ]}
            ]},
            { "name" : "Albert", "age" : "33", "children" : [] },
            { "name" : "Ron", "age" : "29", "children" : [] }
        ];
    $scope.treedata =
        [
            { "label" : "User", "id" : "role1", "children" : [
                { "label" : "subUser1", "id" : "role11", "children" : [] },
                { "label" : "subUser2", "id" : "role12", "children" : [
                    { "label" : "subUser2-1", "id" : "role121", "children" : [
                        { "label" : "subUser2-1-1", "id" : "role1211", "children" : [

                            { "label" : "subUser2-1-1", "id" : "role1211", "children" : [
                                { "label" : "subUser2-1-1", "id" : "role1211", "children" : [


                                ] }

                            ] }
                        ] },
                        { "label" : "subUser2-1-2", "id" : "role1212", "children" : [] }
                    ]}
                ]}
            ]},
            { "label" : "Admin", "id" : "role2", "children" : [] },
            { "label" : "Guest", "id" : "role3", "children" : [] }
        ];
    $scope.tree = [
        {name: "Node", nodes: [
            {name: "Node", nodes: [
                {name: "Node", nodes: [

                    {name: "Node", nodes: [

                        {name: "Node", nodes: [
                            {name: "Node", nodes: [

                                {name: "Node", nodes: [
                                    {name: "Node", nodes: [
                                        {name: "Node", nodes: [

                                            {name: "Node", nodes: [


                                            ]}
                                        ]}

                                    ]}

                                ]}
                            ]}

                        ]}
                    ]}
                ]}

            ]}

        ]},
        {name: "leaf", isleaf: true}
    ];
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
    $scope.getclass = function(data){
        var ret = '';
        if(data.isleaf){
            ret =" leaf";
        }else{
            ret = $scope.treeselected===data?'selected':'';
            if(!data.hide){
                ret+=" open";
            }
        }
        return ret;
    }
}