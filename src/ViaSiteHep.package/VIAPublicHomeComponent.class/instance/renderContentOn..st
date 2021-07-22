rendering
renderContentOn: html
	html div class: 'toccaBanner'; with: [
		html image class: 'bannerImage'; url: '/site/images/public_banner.jpg'].

	html ukContainer: [
		html div class: 'loginSection'; with: [
			VIATocHepUser isOauthEnabled ifTrue: [
				html bigAnchorButton
	"				callback: [ self app openLoginDialog ];"
					url: self oauthAuthorizeUrl;
					target: '_self';
					with: [
						html span: [
							html iconLogin; space.
							html sT: 'publicHome:login' ] ]
			] ifFalse: [
				html div pT: 'publicHome:loginDisabled'
			]
				
		].

		html div pT: 'publicHome:info'.

"		self renderInfoOn: html"
	]