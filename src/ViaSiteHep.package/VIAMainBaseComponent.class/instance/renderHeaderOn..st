rendering
renderHeaderOn: html
	html div class: 't-header'; a: 'uk-sticky'; with: [ 
		(html ukNavbarOptions: 'dropbar: true; dropbar-mode: push; mode: click;')
			class: 'uk-navbar-transparent t-menubar';
			with: [
				self ifViewportSmall: [
					self renderNavbarSmallContentOn: html ]
				else: [
					self renderNavbarContentOn: html ]].
		html div class: 'uk-navbar-dropbar'
	]