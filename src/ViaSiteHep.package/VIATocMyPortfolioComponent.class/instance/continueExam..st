actions
continueExam: anExam
	self show: ((VIAExamModuleExerciser exam: anExam)
		addBackButton;
		yourself).