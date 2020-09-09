ajax
ajaxPairSelected: aCollection
	| correct pair chosenAnswerHolder |
	
	aCollection ifBlank: [ ^ self ].
	aCollection size = 2 ifFalse: [ ^ self ].

	pair := aCollection first.
	chosenAnswerHolder := aCollection second.
	
	correct := self pair: pair with: chosenAnswerHolder.
	
	self requestContext respond: [ :response |
		response
			doNotCache;
			contentType: WAMimeType applicationJson;
			nextPutAll: correct asJson ]