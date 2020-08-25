rendering
renderNavbarContentOn: html
	html div class: 'uk-navbar-left'; with: [
		self renderLogoOn: html.
	].
	html div class: 'uk-navbar-right t-menubar'; with: [
		html anchor
			callback: [ self gotoSearchModule ];
			with: [ html iconSearch].
"		html anchor
			callback: [ self goUp ];
			with: [ html ukIcon: 'home']."
		html anchor
			callback: [ self gotoMyPortfolio ];
			with: [ html iconPortfolio].
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
				html div
					class: 'uk-offcanvas-close';
"					a: 'uk-close';"
					with: [ html iconClose ].
				self renderMenuOn: html.
"				self renderAccountMenuOn: html."
	]]