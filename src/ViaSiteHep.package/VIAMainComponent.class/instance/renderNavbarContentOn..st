rendering
renderNavbarContentOn: html
	html div class: 'uk-navbar-left'; with: [
		self renderLogoOn: html.
	].
	html div class: 'uk-navbar-center'; with: [
		html unorderedList class: 'uk-navbar-nav uk-margin-right'; with: [
			html listItem: [
				html anchor
					callback: [ self gotoToccaStart ];
					with: [
						html iconHome.
						html span class: 'uk-visible@l'; with: [
							html space.
							html sT: 'main:fastAccess:start']]
		]].
		self renderFastAccessMenuOn: html.
	].
	html div class: 'uk-navbar-right'; with: [
"		html div class: 'uk-navbar-item'; with: [
		]."

		html unorderedList class: 'uk-navbar-nav'; with: [
			html listItem: [
				html anchor
					callback: [ self gotoMyPortfolio ];
					with: [ html iconPortfolio]
			].
			html listItem: [ 
				html anchor
					with: [ html iconSearch].
				self renderDropbarOn: html.
			].
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
