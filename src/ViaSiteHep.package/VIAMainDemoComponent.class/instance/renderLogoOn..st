rendering
renderLogoOn: html
	html anchor class: 'uk-logo t-logo'; callback: [self gotoHome]; with: [
		html logoTocca.
		html demoLabel.
	]