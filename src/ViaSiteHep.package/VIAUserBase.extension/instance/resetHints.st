*ViaSiteHep
resetHints
	self properties keys do: [ :key |
		(key beginsWith: 'showHint:') ifTrue: [ self propertyRemoveAt: key ]
	]