rendering
renderFastAccessMenuOn: html
	| moduleType |
"	self currentPortfolio lastOpenedModule ifNotNil: [:m |
		html div class: 'uk-navbar-item'; with: [
			html span: m indexCodeString
		].
	]."

	moduleType := self currentModuleType.
	html unorderedList class: 'uk-navbar-nav fastAccess'; with: [
		html listItem class: 'active' if: (moduleType = 'R'); with: [
			html anchor
				callback: [ self gotoSmartUnit ];
				with: [
					html iconUnita.
					html span class: 'uk-visible@l'; t: 'main:fastAccess:unita']
		].
		html listItem class: 'active' if: (moduleType = 'P'); with: [
			html anchor
				callback: [ self gotoSmartPalloncini ];
				with: [
					html iconPalloncini.
					html span class: 'uk-visible@l'; t: 'main:fastAccess:palloncini']
		].
		html listItem class: 'active' if: (moduleType = 'V'); with: [
			html anchor
				callback: [ self gotoSmartVocabolario ];
				with: [
					html iconVocabolario.
					html span class: 'uk-visible@l'; t: 'main:fastAccess:vocabolario']
		]
	].
