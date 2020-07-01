as yet unclassified
renderContentOn: html
	html div class: 'startArea uk-margin-top uk-margin-bottom'; with: [
		html bigAnchorButton
			callback: [ self app gotoToccaStart ];
			t: 'myHome:toccaStart'].
		
	html ukContainer: [
		self renderInfoOn: html ]