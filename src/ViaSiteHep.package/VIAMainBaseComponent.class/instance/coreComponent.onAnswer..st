accessing
coreComponent: anObject onAnswer: aBlock
	(self coreComponent: anObject)
		onAnswer: [:answer |
			aBlock cull: answer]