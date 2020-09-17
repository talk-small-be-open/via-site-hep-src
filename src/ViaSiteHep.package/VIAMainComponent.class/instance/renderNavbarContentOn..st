rendering
renderNavbarContentOn: html
	html div class: 'uk-navbar-left'; with: [
		self renderLogoOn: html.
	].
	html div class: 'uk-navbar-center'; with: [
		self renderFastAccessMenuOn: html.
	].
	html div class: 'uk-navbar-right'; with: [
		html div class: 'uk-navbar-item'; with: [
			html form class: 'searchForm uk-form-horizontal'; with: [
				html textInput
					callback: [ :value | self gotoSmartFromString: value ];
					placeholder: 'main:searchPlaceholder't;
					class: 'searchInput uk-input uk-visible@m'.
				html button
					beSubmit;
					class: '';
	"					callback: [ self gotoSearchModule ];"
					with: [ html iconSearch].
			].
		].
"		html anchor
			callback: [ self goUp ];
			with: [ html ukIcon: 'home']."
		html unorderedList class: 'uk-navbar-nav'; with: [
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