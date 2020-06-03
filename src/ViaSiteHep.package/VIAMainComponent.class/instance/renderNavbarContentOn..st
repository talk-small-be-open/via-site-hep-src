rendering
renderNavbarContentOn: html
	html div class: 'uk-navbar-left'; with: [
		self renderLogoOn: html ].

	html div class: 'uk-navbar-right t-menubar'; id: 'mainMenu'; with: [
		html anchor
			callback: [  ];
			with: [ html ukIcon: 'home'].
		html anchor
			callback: [  ];
			with: [ html ukIcon: 'user'].
		html anchor
			callback: [  ];
			with: [ html ukIcon: 'search'].
		html anchor
			class: 'mainMenuToggler';
			ukToggleTarget: '#mainMenu';
			with: [
				html iconMenu.
				"html t: 'general:menu'"]

"		self renderMenuOn: html."
	]