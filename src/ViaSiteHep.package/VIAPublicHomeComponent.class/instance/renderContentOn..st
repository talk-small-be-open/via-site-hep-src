rendering
renderContentOn: html
	html ukContainer: [
		html div class: 'toccaBanner'; with: [
			html div class: 'title'; with: [
				html text: 'Tocca'; break; text: 'a te!'].
			html bigAnchorButton
				callback: [ self app openLoginDialog ];
				t: 'publicHome:login'.
		].
		
		self renderInfoOn: html
	]