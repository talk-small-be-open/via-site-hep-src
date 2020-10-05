rendering
renderLogoOn: html
	html anchor class: 'uk-logo t-logo'; callback: [self gotoHome]; with: [
"		html text: 'Tocca a te!'."
		self ifTeacher: [ html logoToccaPlus ] else: [ html logoTocca ].
		
"			height: 'auto';
			width: '120px'"
		]