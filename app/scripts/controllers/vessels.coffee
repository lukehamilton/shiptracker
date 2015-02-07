'use strict'

###*
 # @ngdoc function
 # @name shiptrackerApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the shiptrackerApp
###
angular.module 'shiptrackerApp'
  .controller 'VesselsCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
