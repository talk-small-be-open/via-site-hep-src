actions
openModule: aModule taskNumber: aTaskNumber remember: aBoolean backToMe: aBackBoolean

	aModule isForDemo
		ifTrue: [ super openModule: aModule taskNumber: aTaskNumber remember: aBoolean backToMe: aBackBoolean ]
		ifFalse: [ self inform: 'demo:notAvailableInDemo']
