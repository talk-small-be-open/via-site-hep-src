actions
removeModule: aModule
	(self confirmYesNo: 'myPortfolio:removeModule?') ifTrue: [
		self currentPortfolio removeModule: aModule]