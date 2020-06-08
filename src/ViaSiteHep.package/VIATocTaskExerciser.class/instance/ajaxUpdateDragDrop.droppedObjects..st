ajax
ajaxUpdateDragDrop: aDragDrop droppedObjects: aCollection
	| answer |
	answer := exercise answerOf: aDragDrop.

	answer value: aCollection asOrderedCollection.

	"Identität entfernen überall anders"
	aDragDrop parentBrick undropItems: aCollection keepIn: {aDragDrop} exercise: exercise