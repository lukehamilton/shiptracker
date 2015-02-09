'use strict'

###*
 # @ngdoc function
 # @name shiptrackerApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the shiptrackerApp
###
angular.module 'shiptrackerApp'
  .controller 'DevicesCtrl', ($scope, deviceService) ->

  	$scope.gridOptions1 =
      enableSorting: true
      enableFiltering: true
      columnDefs: [
        { field: "id", }
        { field: "active" }
        { field: "UUID" }
        { field: "user_id" }
      ]

  	deviceService.getDevices (err, devices) ->
      $scope.gridOptions1.data = devices