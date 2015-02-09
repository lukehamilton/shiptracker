'use strict'

###*
 # @ngdoc function
 # @name shiptrackerApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the shiptrackerApp
###
angular.module 'shiptrackerApp'
  .controller 'FootprintsCtrl', ($scope, footprintService) ->

    $scope.gridOptions1 =
      enableSorting: true
      enableFiltering: true
      columnDefs: [
        { field: "id", }
        { field: "name" }
        { field: "band" }
        { field: "color_rgb" }
        { field: "network_id" }
        { field: "geographic_bounds" }
      ]

    footprintService.getFootprints (err, footprints) ->
      $scope.gridOptions1.data = footprints
