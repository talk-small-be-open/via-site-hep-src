rendering
renderFooterOn: html
	html div class: 'footer'; with: [
		self website renderFooterContentOn: html.

		html div class: 'footnotes'; with: [
			html anchor url: 'https://www.hep-verlag.ch'; target: '_blank'; with: [
				html logoHep].
			html text: ' | '.
			html anchor
				callback: [self openImprint];
				t: 'footer:imprint'.
			html text: ' | '.
			html anchor
				callback: [self openDisclaimer];
				t: 'footer:disclaimer'.
		].

		html div class: 'logos'; with: [
			"hep Logo, und weitere?"
		]

	].