'use strict'

###*
 # @ngdoc function
 # @name shiptrackerApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the shiptrackerApp
###
angular.module 'shiptrackerApp'
  .controller 'VesselsCtrl', ($scope, vesselService) ->
    
    $scope.gridOptions1 =
      enableSorting: true
      enableFiltering: true
      columnDefs: [
        { field: "id", }
        { field: "name" }
        { field: "customer_name" }
        { field: "status" }
        { field: "latitude" }
        { field: "longitude" }
      ]

    vesselService.getVessels (err, vessels) ->
      $scope.gridOptions1.data = vessels