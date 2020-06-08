actions
clearPortfolio
	(self confirmYesNo: 'myPortfolio:deleteAll?') ifTrue: [
		self currentPortfolio clear]