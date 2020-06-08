actions
viewExam: anExam

	anExam isVisibleAfterSubmit ifFalse: [
		self inform: 'myPortfolio:submittedExamNotVisible'.
	^self].
	
	self show: ((VIAExamModuleViewExerciser exam: anExam)
		beShowSolution;
		addBackButton;
		yourself).