ajax
ajaxUpdateDragDrop: aDragDrop droppedObjects: aCollection
	| answer |
	answer := exerciseGSRENAME answerOf: aDragDrop.

	answer value: aCollection asOrderedCollection.

	"Identität entfernen überall anders"
	aDragDrop parentBrick undropItems: aCollection keepIn: {aDragDrop} exercise: exerciseGSRENAME