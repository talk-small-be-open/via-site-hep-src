as yet unclassified
toccaunitOfModule: aModule
	^ aModule indexCode ifBlank: [ 1 ] ifNotBlank: [ :ic |
		ic firstNumber]