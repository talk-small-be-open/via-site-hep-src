as yet unclassified
renderBottomOn: html
	isShowingCongratulation ifTrue: [
		html ukModal: [
			html t: 'exerciserFinished:congratulations'
		].
	isShowingCongratulation := false
	]