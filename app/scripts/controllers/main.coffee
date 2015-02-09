'use strict'

###*
 # @ngdoc function
 # @name shiptrackerApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the shiptrackerApp
###
angular.module 'shiptrackerApp'
  .controller 'MainCtrl', ($scope, vesselService) ->

    vesselService.getVessels (err, vessels) ->

      vessels.map (vessel) ->
        vessel.radius = 5
        vessel.fillKey = 'USA'

      bubble_map = new Datamap(
        element: document.getElementById('map')
        geographyConfig:
          popupOnHover: false
          highlightOnHover: false
        fills:
          defaultFill: '#ABDDA4'
          USA: 'blue')
      
      bubble_map.bubbles vessels