as yet unclassified
renderContentOn: html
	html div class: 'exercise'; with: [
		exerciseGSRENAME task acceptRenderingVisitor: self on: html.
		self renderScoreOn: html]