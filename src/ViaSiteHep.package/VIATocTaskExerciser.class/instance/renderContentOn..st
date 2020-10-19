rendering
renderContentOn: html
	html div class: 'exercise'; with: [
		self renderTopToolbarOn: html.
		exerciseGSRENAME task acceptRenderingVisitor: self on: html.
		self ifc: [
			self renderScoreOn: html].
		self renderButtonsOn: html].
	self renderBottomOn: html