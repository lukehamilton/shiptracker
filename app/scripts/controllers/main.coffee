'use strict'

###*
 # @ngdoc function
 # @name shiptrackerApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the shiptrackerApp
###
angular.module 'shiptrackerApp'
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
