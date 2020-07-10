ajax
ajaxPairSelected: aCollection
	| correct |
	
	aCollection size = 2 ifFalse: [ ^ self ].
	
	correct := self pairLeft: aCollection first right: aCollection second.
	
	self requestContext respond: [ :response |
		response
			doNotCache;
			contentType: WAMimeType applicationJson;
			nextPutAll: correct asJson ]