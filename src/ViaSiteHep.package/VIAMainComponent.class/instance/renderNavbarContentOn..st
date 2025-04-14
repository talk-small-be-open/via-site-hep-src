rendering
renderNavbarContentOn: html
	"uk-navbar-left"
	html div class: 'menubarLeft'; with: [
		self renderLogoOn: html.
	].
"	html div class: 'uk-navbar-center'; with: ["
	html div class: 'menubarCenter'; with: [
		html unorderedList class: 'uk-navbar-nav uk-margin-right'; with: [
			html listItem
				class: 'activeHome' if: (self activeCoreComponent isKindOf: VIAToccaStartComponent);
				with: [
					html anchor
						callback: [ self gotoToccaStart ];
						with: [
							html iconHome.
							html span class: 'menuLabel uk-visible@l'; with: [
								"html space."
								html sT: 'main:fastAccess:start']]
			].
			self renderFastAccessMenuOn: html.
		].
	].
	html div class: 'menubarRight'; with: [
"		html div class: 'uk-navbar-item'; with: [
		]."

		html unorderedList class: 'uk-navbar-nav'; with: [
			self ifTeacher: [
				html listItem: [
					html anchor
						callback: [ self gotoMyTeacherCockpit ];
						with: [ html iconUserTeacher ]
				].
			].
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

"	self renderOffcanvasOn: html."
