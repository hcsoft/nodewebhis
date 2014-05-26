'use strict';

/* Services */


// Demonstrate how to register services
// In this case it is a simple value service.
angular.module('myApp.services', []).factory('loginService', function() {
    var loginService = {};
    loginService.setLogined = function(flag) {
        loginService.logined=flag;
    };
	
    return loginService;
}).factory('cache', function($http) {	
	 // var mcache = {
		// async: function() {
			// var promise = $http.post('/cache.json').then(function (response) {
				// console.log("这里执行了几次?用来确认singleton");
				// return response.data;
			// });
			// return promise;
		// }
	// };
    // return mcache;
	return $http.post('/cache.json');
}).factory('httpRequestInterceptor', function($q) {
    return {
        'response': function(response) {
            // do something on success
            console.log("aaaaaaaaaaaaaaaaaaaaa",response);
            return response;
        },
        'responseError': function(response) {
            // do something on success
            console.log("bbbbbbbbbbbb",response);
            return response;
        }
    };
});
