﻿var ngApp = angular.module('HomeApp', ['ngRoute']);
    const get_Jobs_Api = "/api/Rest/getJobMarket";
    const post_Login_Api = '/api/Rest/LoginUser';
    const post_Register_Api = '/api/Rest/SubmitRegisterForm';


ngApp.config(function ($routeProvider) {
    $routeProvider
        .when("/", { templateUrl: "Web/Index", controller: 'IndexController' })
        .when("/Login", { templateUrl: "Web/Login", controller: 'LoginController' })
        .when("/Register", { templateUrl: "Web/Register", controller: 'RegisterController'})
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
    $scope.submitLogin = function (user, pass) {
        $http.post(post_Login_Api + '?user=' + user + '&pass=' + pass)
            .then(function (response) { alert("Login Success !"); });
    };
});

ngApp.controller('RegisterController', function ($scope, $http) {
    $scope.submitLogin = function (data) {
        $http.post(post_Register_Api, data)
            .then(function (response) { alert("Form Submitted !"); });
    };
});
