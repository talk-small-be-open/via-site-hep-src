rendering
renderContentOn: html
	self renderHeaderOn: html.
"		self renderMenuOn: html."
	html div class: 'coreContainer'; with: [
		self renderFlashMessagesOn: html.
		self renderCoreOn: html].
	self renderFooterOn: html