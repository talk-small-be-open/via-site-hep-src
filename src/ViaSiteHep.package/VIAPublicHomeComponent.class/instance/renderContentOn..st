rendering
renderContentOn: html
	html div class: 'toccaBanner'; with: [
		html image class: 'bannerImage'; url: '/site/images/public_banner.jpg'].

	html ukContainer: [
		html div class: 'loginSection'; with: [
			html bigAnchorButton
				callback: [ self app openLoginDialog ];
"	VIATocHepUser isOauthEnabled ifTrue: ["
"TODO If OAuth ready				url: self oauthAuthorizeUrl;"
				target: '_self';
				with: [
					html span: [
						html iconLogin; space.
						html sT: 'publicHome:login' ] ] ].
		html div pT: 'publicHome:info'.

"		self renderInfoOn: html"
	]