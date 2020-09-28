rendering
renderNavbarContentOn: html
	html div class: 'uk-navbar-left'; with: [
		self renderLogoOn: html.
	].
	html div class: 'uk-navbar-center'; with: [
		self renderFastAccessMenuOn: html.
	].
	html div class: 'uk-navbar-right'; with: [
"		html div class: 'uk-navbar-item'; with: [
		]."

		html unorderedList class: 'uk-navbar-nav'; with: [
			html listItem: [ 
				html anchor
					with: [ html iconSearch].
				self renderDropbarOn: html.
			].
			html listItem: [
				html anchor
					callback: [ self gotoMyPortfolio ];
					with: [ html iconUserSmart] ].
			html listItem: [
				html anchor
					class: 'mainMenuToggler';
					ukToggleTarget: '#mainMenu';
					with: [
						html iconMenu.
						"html t: 'general:menu'"]]
		]
	].

	self renderOffcanvasOn: html.
