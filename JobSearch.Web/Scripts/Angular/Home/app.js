var ngApp = angular.module('HomeApp', []);
var API = "/api/Rest/getJobMarket";  // Change Get url request before deployment

ngApp.controller('TableController', function ($scope, $http) {

    $scope.data = $http.get(API)
                    .then(function (response) {
                        return response.data;
                  });

    $scope.SearchUpdate = function (value) {

    }
});