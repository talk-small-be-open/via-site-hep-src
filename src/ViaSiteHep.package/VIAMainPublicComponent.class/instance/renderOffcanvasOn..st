rendering
renderOffcanvasOn: html	
"	html div
		id: 'mainMenu';
		a: 'uk-offcanvas' p: 'flip: true; overlay: true';
		with: [
			html div class: 'uk-offcanvas-bar'; with: [
				html button class: 'uk-offcanvas-close'; a: 'uk-close'.
				self renderMenuOn: html].
	]"