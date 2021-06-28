rendering
renderNavbarContentOn: html
	html div class: 'menubarLeft'; with: [
		self renderLogoOn: html.
	].

"	html div class: 'menubarRight'; with: [
		html unorderedList class: 'uk-navbar-nav'; with: [
			html listItem: [
				html anchor
					callback: [ self openLoginDialog ];
					with: [ html iconLogin] ].
			html listItem: [
				html anchor
					class: 'mainMenuToggler';
					ukToggleTarget: '#mainMenu';
					with: [
						html iconMenu.
	]]]]"