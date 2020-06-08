rendering
renderContentOn: html
	html heading t: 'myPortfolio:title'.

	self currentPortfolio isEmpty
		ifTrue: [
			html paragraph t: 'myPortfolio:isEmpty']
		ifFalse: [
			html ukAnchorButton
				callback: [self clearPortfolio];
				t: 'myPortfolio:removeAll'.
			self renderMyModulesOn: html.
		]