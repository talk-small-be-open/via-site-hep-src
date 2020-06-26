as yet unclassified
getEndpoint: anEndpointPath
	^ self callMethod: 'GET' data: nil endpoint: anEndpointPath