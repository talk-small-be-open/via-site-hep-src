as yet unclassified
renderContentOn: html
	html div class: 'exercise'; with: [
		exercise task acceptRenderingVisitor: self on: html.
		self renderScoreOn: html]