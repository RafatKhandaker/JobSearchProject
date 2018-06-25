var ngApp = angular.module('HomeApp', ['ngRoute']);
var API = "/api/Rest/getJobMarket";  


ngApp.config(function ($routeProvider) {
    $routeProvider
        .when("/", { templateUrl: "/Home/Index" })
        .when("/login", { templateUrl: "/Home/Login" })
        .when("/logout", { templateUrl: "/Home/Logout" })
        .when("/Admin", { templateUrl: "/Home/Admin" })
        .when("Profile", { templateUrl: "Home/Profile" });
});


ngApp.controller('TableController', function ($scope, $http) {
    $scope.data = $http.get(API)
                    .then(function (response) {
                        return response.data;
                    });

    $scope.SearchUpdate = function (value) {
    }
});


ngApp.controller('LoginController', function ($scope) {
    $scope.openLogin = function () {
    }

    $scope.closeLogin = function () {

    }
});

