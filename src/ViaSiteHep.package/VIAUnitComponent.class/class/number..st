accessing
number: anInteger
	"Factory method"
	| theClass |
	theClass := self.
	self session isDemo ifTrue: [ theClass := VIADemoUnitComponent ].
	self session isBetatest ifTrue: [ theClass := VIABetatesterUnitComponent ].

	^ theClass basicNew
		setUnitNumber: anInteger;
		initialize;
		yourself