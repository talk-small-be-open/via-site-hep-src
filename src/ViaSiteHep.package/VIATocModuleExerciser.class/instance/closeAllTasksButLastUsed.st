as yet unclassified
closeAllTasksButLastUsed
	| ordered never |
	never := DateAndTime year: 0 month: 1 day: 1.
	ordered := exerciserComponents sortedBy: [ :each | each exercise touchedAt ifNil: [ never ] ].
	
	ordered allButLast do: [ :each | each beClosed ]