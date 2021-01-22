accessing
activeCoreComponent
	^ self coreComponent ifNotNil: [:c | c activeComponent]
