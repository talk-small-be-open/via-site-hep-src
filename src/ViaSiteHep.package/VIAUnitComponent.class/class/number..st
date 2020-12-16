accessing
number: anInteger
	| class |
	class := self session isDemo ifTrue: [ VIADemoUnitComponent ] ifFalse: [ self ].

	^ class basicNew
		setUnitNumber: anInteger;
		initialize;
		yourself