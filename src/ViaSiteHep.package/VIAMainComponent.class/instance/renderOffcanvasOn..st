rendering
renderOffcanvasOn: html

	html div
		id: 'mainMenu';
		a: 'uk-offcanvas' p: 'flip: true; overlay: true';
		class: 'uk-light';
		with: [
			html div class: 'uk-offcanvas-bar uk-overflow-hidden'; with: [	
				html div
					class: 'uk-offcanvas-close';
"					a: 'uk-close';"
					with: [ html iconClose ].

				html div class: 'mainMenuContainer'; with: [
					html div
	"					a: 'uk-overflow-auto' p: 'selContainer: .uk-offcanvas-bar; selContent: .uk-offcanvas-bar';"
						class: 'mainMenuItems';
						with: [
							self renderMenuOn: html.
			"				self renderAccountMenuOn: html."
					].

				"uk-position-bottom"
				html div class: 'mainMenuFooter'; with: [
					html logoHepClaimInv
				].

			].

		]]