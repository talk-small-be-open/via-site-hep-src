actions
checkButtonClicked

"	exercise checkAnswers."

	self check.
	self beOpen.
	onCheckButtonBlock ifNotNil: [:block | block value].
	
"	self tryToFinish"