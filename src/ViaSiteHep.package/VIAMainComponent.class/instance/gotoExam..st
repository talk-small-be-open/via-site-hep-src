actions
gotoExam: anExam
	| examComponent |

	"Double Check. Nicht-veröffentlichtes Modul?"
	anExam module isReleased ifFalse: [^self].

	(anExam hasUserSubmitted: self currentUser) ifTrue: [
		self showText: 'exam:youDoneThisExam'.
		^self
	].

	"Prüfung in Portfolio übernehmen"
	self currentPortfolio addExam: anExam.
	
	examComponent := (VIAExamModuleExerciser exam: anExam).
	
	self coreComponentWithBackButton: (VIATransactionComponent with: examComponent)