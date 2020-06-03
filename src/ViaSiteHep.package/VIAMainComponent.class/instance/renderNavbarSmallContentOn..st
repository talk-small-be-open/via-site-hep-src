rendering
renderNavbarSmallContentOn: html
	html div class: 'uk-navbar-left'; with: [
		self renderLogoOn: html.
	].
	html div class: 'uk-navbar-right t-menubar'; with: [
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
	].
	
	html div
		id: 'mainMenu';
		a: 'uk-offcanvas' p: 'flip: true; overlay: true';
		with: [
			html div class: 'uk-offcanvas-bar'; with: [
				html button class: 'uk-offcanvas-close'; a: 'uk-close'.
				self renderMenuOn: html.
"				self renderAccountMenuOn: html."
	]]