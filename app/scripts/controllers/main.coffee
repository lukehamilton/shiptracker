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
        console.log vessel

      bubble_map = new Datamap(
        element: document.getElementById('map')
        geographyConfig:
          popupOnHover: false
          highlightOnHover: false
        fills:
          defaultFill: '#ABDDA4'
          USA: 'blue')
      
      bubble_map.bubbles( vessels, {
        popupTemplate: (geo, data) ->
          return '<div class="hoverinfo"><b>Name:</b> ' + data.name + '</br>' + '<b>Status:</b> ' + data.status + '<br/>' + '<b>Category:</b> ' + data.category + '<br/>' + '<b>Customer Name:</b> ' + data.customer_name + '<br/>' + '<b>Latitude:</b> ' + data.latitude + '<br/>' + '<b>Longitude:</b> ' + data.longitude + '<br/>' + '<b>Modem Name:</b> ' + data.modem_name + '<br/>' + '<b>Modem Type:</b> ' + data.modem_type + '<br/>' + '<b>Band:</b> ' + data.band + '<br/>' + '<b>IP Address:</b> ' + data.ip + '<br/>' + '<b>Bandwidth Downstream:</b> ' + data.bandwidth_downstream + '<br/>' + '<b>Bandwidth Upstream:</b> ' + data.bandwidth_upstream + '<br/>'
      })