rendering
renderLogoOn: html
	html anchor class: 'uk-logo t-logo'; callback: [self gotoHome]; with: [
"		html image
			class: 'tocca-logo';
			url: ('/site/images/', self website logoFilename)."
		html text: 'Tocca a te'
"			height: 'auto';
			width: '120px'"
		]