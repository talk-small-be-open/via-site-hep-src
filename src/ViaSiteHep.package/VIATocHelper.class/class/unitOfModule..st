as yet unclassified
unitOfModule: aModule
	^ aModule indexCode ifBlank: [ 0 ] ifNotBlank: [ :ic |
		((ic firstNumber + 1) // 2)]