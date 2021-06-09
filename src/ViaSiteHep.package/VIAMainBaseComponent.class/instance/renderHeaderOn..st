rendering
renderHeaderOn: html
	html div class: 't-header'; a: 'uk-sticky'; with: [ 
		(html ukNavbarOptions: 'dropbar: true; mode: click;')
			class: 'uk-navbar-transparent uk-light t-menubar';
			with: [
				self ifViewportSmall: [
					self renderNavbarSmallContentOn: html ]
				else: [
					self renderNavbarContentOn: html ].
				self renderOffcanvasOn: html.
			].
		html div class: 'uk-navbar-dropbar'
	]