as yet unclassified
testdrive: aTask module: aModule
	| testExercise moduleExercise |
	moduleExercise := VIAModuleExercise module: aModule user: self currentUser.
	testExercise := VIATaskExercise task: aTask moduleExercise: moduleExercise.
	
	aModule isExam ifTrue: [
		^VIAExerciserExamComponent exercise: testExercise].

	^self exercise: testExercise