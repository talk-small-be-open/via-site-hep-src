actions
reset
	(self confirmYesNo: 'exerciser:reallyReset?') ifTrue: [
		exercise reset.
		self restart]