accessing
number: anInteger
	"Factory method"
	| theClass |
	theClass := self.
	self session isDemo ifTrue: [ theClass := VIADemoUnitComponent ].
	self currentUser isBetatester ifTrue: [ theClass := VIABetatesterUnitComponent ].

	^ theClass basicNew
		setUnitNumber: anInteger;
		initialize;
		yourself