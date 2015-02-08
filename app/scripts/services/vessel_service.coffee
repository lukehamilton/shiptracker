angular.module( 'shiptrackerApp' ).factory 'vesselService', ($http) ->

  getVessels: (callback) ->
    $http.get('http://shiptrackerapimocks.mtnsat.com/api/vessels').
      success( (data, status, headers, config) ->
        callback null, data
      ).error (data, status, headers, config) ->
        callback data
