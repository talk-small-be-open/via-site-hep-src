as yet unclassified
teacherOkTextMemoAnswer: aMemoAnswerItem
	aMemoAnswerItem hasTeacherPoints ifTrue: [ 
		aMemoAnswerItem teacherOk.
		self check ]