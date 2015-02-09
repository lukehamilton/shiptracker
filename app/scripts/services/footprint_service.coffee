angular.module( 'shiptrackerApp' ).factory 'footprintService', ($http) ->

  getFootprints: (callback) ->
    $http.get('http://shiptrackerapimocks.mtnsat.com/api/footprints').
      success( (data, status, headers, config) ->
        callback null, data
      ).error (data, status, headers, config) ->
        callback data
