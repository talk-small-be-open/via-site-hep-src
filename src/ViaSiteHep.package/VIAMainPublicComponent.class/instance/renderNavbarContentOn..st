rendering
renderNavbarContentOn: html
	html div class: 'menubarLeft'; with: [
		self renderLogoOn: html.
	].

	html div class: 'menubarRight'; with: [
"		html anchor
			callback: [  ];
			with: [ html ukIcon: 'home']."
"		html anchor
			callback: [ self gotoSearchModule ];
			with: [ html iconSearch]."
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
		"				html t: 'general:menu'"]]
	]]