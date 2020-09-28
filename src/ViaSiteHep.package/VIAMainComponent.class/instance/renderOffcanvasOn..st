rendering
renderOffcanvasOn: html

	html div
		id: 'mainMenu';
		a: 'uk-offcanvas' p: 'flip: true; overlay: true';
		class: 'uk-light';
		with: [
			html div class: 'uk-offcanvas-bar'; with: [
				html div
					class: 'uk-offcanvas-close';
"					a: 'uk-close';"
					with: [ html iconClose ].
				self renderMenuOn: html.
"				self renderAccountMenuOn: html."

				html div class: 'uk-position-bottom mainMenuFooter'; with: [
					html logoHepClaim
				]

			].
		]