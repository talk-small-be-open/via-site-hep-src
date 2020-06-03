rendering
renderFooterOn: html
"	html div class: 'footer'; with: [
		self website renderFooterContentOn: html.

		html div class: 'footnotes'; with: [
			html t: '321via:footnotes'.
			html text: ' | '.
			html anchor
				callback: [self openDisclaimer];
				t: '321via:disclaimer:link'.
			html text: ' | '.
			html anchor
				callback: [self openImprint];
				t: '321via:imprint:link'.
			self ifAdmin: [
				html text: ' | '.
				html anchor
					callback: [self switchToUser];
					with: 'su'].
			self session hasBackgroundAdminUser ifTrue: [
				html text: ' | '.
				html anchor
					callback: [self switchBackToAdmin];
					with: 'bck'.
			]
		]]."