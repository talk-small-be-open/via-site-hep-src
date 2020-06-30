rendering
renderContentOn: html
	html bigAnchorButton
		callback: [ self app openLoginDialog ];
		t: 'publicHome:login'.
		
	self renderInfoOn: html