rendering
renderContentOn: html
	self renderNavigationOn: html.
	self renderTitleOn: html.
"	self renderDetailInfoOn: html."

"	html ukGrid class: 'uk-grid-small uk-child-width-1-1 uk-child-width-1-2@s'; with: [
		html div: [self renderMenuOn: html ].
		html div: [self renderScoreOn: html ].
	]."

	self renderBodyOn: html.
	self renderFooterOn: html