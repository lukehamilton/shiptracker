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
    
    vesselService.getVessels (err, vessels) ->
      $scope.vessels = vessels


    
