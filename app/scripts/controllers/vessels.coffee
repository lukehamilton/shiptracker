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
      columnDefs: [
        { field: "id", }
        # { field: "footprint_id" }
        { field: "name" }
        # { field: "modem_name" }
        { field: "customer_name" }
        # { field: "color_rgb" }
        { field: "status" }
        # { field: "nms_status" }
        { field: "latitude" }
        { field: "longitude" }
        # { field: "heading" }
        # { field: "did" }
        # { field: "ip" }
        # { field: "band" }
        # { field: "modem_type" }
        # { field: "category" }
        # { field: "up_snr" }
        # { field: "up_snr1" }
        # { field: "down_snr" }
        # { field: "tx_power" }
        # { field: "rx_power" }
        # { field: "thead" } 
        # { field: "speed_knot" }
        # { field: "speed_kmh" }
        # { field: "bandwidth_downstream" }
        # { field: "bandwidth_upstream" }
        # { field: "up_cir" }
        # { field: "up_mir" }
        # { field: "timestamp" }
      ]

    vesselService.getVessels (err, vessels) ->
      $scope.gridOptions1.data = vessels
      $scope.vessels = vessels


    
