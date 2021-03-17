as yet unclassified
inputIsBullshitEmail: anEmail pw: aPassword
	(anEmail isNil or: [anEmail trimBoth isBlank]) ifTrue: [ ^ true ].
	(aPassword isNil or: [aPassword trimBoth isBlank]) ifTrue: [ ^ true ].
	^ false