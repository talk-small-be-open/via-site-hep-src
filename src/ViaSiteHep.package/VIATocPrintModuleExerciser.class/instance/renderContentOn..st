as yet unclassified
renderContentOn: html
	html div id: 'moduleToPrint'; with: [
		self renderTitleOn: html.
		self renderBasicDetailInfoOn: html.
		self renderScoreOn: html.
		self renderBodyOn: html.
		self renderFooterOn: html].
	
	html ukAnchorButton
		callback: [self close];
		t: 'close'.
		
	html scriptDefer: '$("#moduleToPrint").printThis()'