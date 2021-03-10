rendering
renderContentOn: html
	html div class: 'toccaBanner'; with: [
		html image class: 'bannerImage'; url: '/site/images/public_banner.jpg'].

	html ukContainer: [
		html div class: 'loginSection'; with: [
			html bigAnchorButton
				callback: [ self app openLoginDialog ];
				with: [
					html span: [
						html iconLogin; space.
						html sT: 'publicHome:login' ] ] ].
		
		self renderInfoOn: html
	]