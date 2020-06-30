as yet unclassified
renderContentOn: html
	html div class: 'uk-margin-top uk-margin-bottom'; with: [
		html bigAnchorButton
			callback: [ self app gotoToccaStart ];
			t: 'myHome:toccaStart'].
		
	self renderInfoOn: html