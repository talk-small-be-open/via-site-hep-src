rendering
renderFooterOn: html
	html div class: 'footer'; with: [
		self website renderFooterContentOn: html.

		html div class: 'footerMenu'; with: [
			html ukGrid class: 'uk-grid-small'; with: [
				html div class: 'uk-width-1-1 uk-width-auto@l'; with: [
					html div class: 'company'; with: [
						html anchor url: 'https://www.hep-verlag.ch'; target: '_blank'; with: [
							html logoHepClaimInv ].
						html div class: 'address'; with: [ 
							"Maps URL: https://goo.gl/maps/zuFUd3bsQkwFJAFs9
							Plus code: WCVM+GW Bern
							Geo URI: geo:46.943956013813455, 7.434755245019583"
							html pT: 'footer:address'
						]
					].
				].
				html div class: 'uk-width-1-1 uk-width-expand@l'; with: [
					html ukGrid class: 'uk-flex uk-flex-wrap uk-flex-between@m uk-flex-right@l'; with: [
						html anchor
							url: (self wd propertyAt: #imprint:url);
							target: '_blank';
"							callback: [self openImprint];"
							t: 'footer:imprint'.
						html anchor
							url: (self wd propertyAt: #disclaimer:url);
							target: '_blank';
"							callback: [self openDisclaimer];"
							t: 'footer:disclaimer'.
						html anchor
							url: (self wd propertyAt: #agb:url);
							target: '_blank';
"							callback: [self openAgb];"
							t: 'footer:agb' ]
		]]].
	

		html div class: 'logos'; with: [
			"hep Logo, und weitere?"
		]

	].