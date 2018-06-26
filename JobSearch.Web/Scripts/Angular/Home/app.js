var ngApp = angular.module('HomeApp', ['ngRoute']);
var get_Jobs_Api = "/api/Rest/getJobMarket";
var post_Login_Api = "/api/Rest/getUserAccount"


ngApp.config(function ($routeProvider) {
    $routeProvider
     //   .when("/api/Rest/getJobMarket", { templateUrl: "/api/Rest/getJobMarket" })
        .when("/", { templateUrl: "Web/Index", controller: 'IndexController' })
        .when("/Login", { templateUrl: "Web/Login", controller: 'LoginController' });
    //   .when("/logout", { templateUrl: "/Home/Logout", controller:'LogoutController' })
    //   .when("/Admin", { templateUrl: "/Home/Admin", controller:'AdminController' })
    //   .when("Profile", { templateUrl: "/Home/Profile", controller:'ProfileController'})
    //  .otherwise({ redirectTo: '/' });  
    
});


ngApp.controller('IndexController', function ($scope, $http) {
    $scope.data = $http.get( get_Jobs_Api )
                    .then(function (response) {
                        return response.data;
                    });

    $scope.SearchUpdate = function (value) {
    };
});


ngApp.controller('LoginController', function ($scope, $http) {
    $scope.submitLogin = function () {
        $http.post(post_Login_Api, [$scope.email, $scope.pass])
                    .then(function (response) { alert("Login Success !"); });
    };
});

