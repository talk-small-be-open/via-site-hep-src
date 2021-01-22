rendering
currentModuleType
	| type |
	"Either in a module ..."
	type := self currentModule ifNotNil: [:m | VIATocHelper moduleType: m ] ifNil: [ nil ].
	
	"... or in the overview"
	(self activeCoreComponent isKindOf: VIAUnitComponent) ifTrue: [ 
		type := VIATocHelper moduleTypeFromFirstIndex: self activeCoreComponent unitNumber
	].

	^ type