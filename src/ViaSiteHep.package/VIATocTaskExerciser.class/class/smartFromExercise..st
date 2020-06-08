as yet unclassified
smartFromExercise: aTaskExercise
	aTaskExercise module isExam ifTrue: [
		^VIAExerciserExamComponent exercise: aTaskExercise].

	aTaskExercise isFinished ifTrue: [
		^VIAExerciserFinishedComponent exercise: aTaskExercise].

	^self exercise: aTaskExercise