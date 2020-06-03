rendering
renderNavbarContentOn: html
	html div class: 'uk-navbar-left'; with: [
		self renderLogoOn: html.
		html div class: 'hm-claim'; with: [html t: '321via:claim'].
	].
	html div class: 'uk-navbar-right'; id: 'mainMenu'; with: [
		self renderMenuOn: html]