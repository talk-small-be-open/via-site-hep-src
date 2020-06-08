rendering
renderMatchingModulesOn: html
	modules ifNil: [ ^ self ].
	
	modules do: [ :each |
		html div: [
			html anchor
				callback: [self gotoModule: each];
				with: each displayName ]]