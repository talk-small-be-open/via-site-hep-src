rendering
renderFastAccessMenuOn: html
"	self currentPortfolio lastOpenedModule ifNotNil: [:m |
		html div class: 'uk-navbar-item'; with: [
			html span: m indexCodeString
		].
	]."

	html unorderedList class: 'uk-navbar-nav'; with: [
		html listItem: [
			html anchor
				callback: [ self gotoSmartUnit ];
				with: 'U'].
		html listItem: [
			html anchor
				callback: [ self gotoSmartPalloncini ];
				with: 'P'].
		html listItem: [
			html anchor
				callback: [ self gotoSmartVocabolario ];
				with: 'V']
	].
