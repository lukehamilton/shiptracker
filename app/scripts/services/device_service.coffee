angular.module( 'shiptrackerApp' ).factory 'deviceService', ($http) ->

  getDevices: (callback) ->
    $http.get('http://shiptrackerapimocks.mtnsat.com/api/devices').
      success( (data, status, headers, config) ->
        callback null, data
      ).error (data, status, headers, config) ->
        callback data
