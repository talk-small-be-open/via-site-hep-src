rendering
currentModuleType
	^ self currentModule ifNotNil: [:m | VIATocHelper moduleType: m ] ifNil: [ nil ]