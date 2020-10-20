actions
reset
	(self confirmYesNo: 'exerciser:reallyReset?') ifTrue: [
		exerciseGSRENAME reset.
		self restart]