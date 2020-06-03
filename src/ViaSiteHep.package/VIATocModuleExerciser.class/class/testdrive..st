as yet unclassified
testdrive: aModule
	"Factory for Testing!"

	"Ist es ein Prüfungsmodul?"
	aModule isExam ifTrue: [
		| testExam testExercise |

		testExam := (VIAExam module: aModule)
			teacherUser: self currentUser;
			yourself.
			
		testExercise := VIAModuleExercise module: aModule user: self currentUser.
		
		^VIAExamModuleExerciser exam: testExam moduleExercise: testExercise.
	].

	^(self model: aModule) start; yourself