actions
openModule: aModule remember: aBoolean

	aModule isForDemo
		ifTrue: [ super openModule: aModule remember: aBoolean ]
		ifFalse: [ self inform: 'demo:notAvailableInDemo']
