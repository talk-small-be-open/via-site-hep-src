rendering
renderContentOn: html
	html ukContainer: [
		html div class: 'toccaBanner'; with: [
			html image class: 'bannerImage'; url: '/site/images/public_banner.jpg'.
"			html div class: 'title'; with: [
				html text: 'Tocca'; break; text: 'a te!']."
			html bigAnchorButton
				callback: [ self app openLoginDialog ];
				with: [
					html span: [
						html iconLogin; space.
						html sT: 'publicHome:login' ] ].
		].
		
		self renderInfoOn: html
	]