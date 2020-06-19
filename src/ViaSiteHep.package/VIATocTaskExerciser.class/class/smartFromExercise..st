as yet unclassified
smartFromExercise: aTaskExercise

	aTaskExercise isFinished ifTrue: [
		^VIATocExerciserFinishedComponent exercise: aTaskExercise].

	^self exercise: aTaskExercise