accessing
refresh
	"Grouped by unita"
	
	self currentPortfolio isEmpty ifFalse: [
		groupedExercises := self currentPortfolio exercisesByIndexCode.
		
		extraExercises := OrderedCollection new.
		extraExercises addAll: (groupedExercises removeKey: (VIAIndexCode fromString: 'P') ifAbsent: [ #() ]).
		extraExercises addAll: (groupedExercises removeKey: (VIAIndexCode fromString: 'V') ifAbsent: [ #() ]).

		currentUnita := groupedExercises keys max.
		currentUnitaExercises := (groupedExercises removeKey: currentUnita ifAbsent: [ #() ])
	]