var HealthFileCtrl = function ($scope, $http, $cookies, $location) {
    $scope.test = "测试";
    $scope.tree = [
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