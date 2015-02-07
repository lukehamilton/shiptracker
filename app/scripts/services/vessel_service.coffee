angular.module( 'shiptrackerApp' ).factory 'vesselService', ($http) ->

  getVessels: () ->
    $http.get('http://shiptrackerapimocks.mtnsat.com/api/vessels').
      success( (data, status, headers, config) ->
        console.log 'SUCCESS', data
      ).error (data, status, headers, config) ->
        console.log 'ERROR'

	test: ()->
		console.log 'Test vessel service'