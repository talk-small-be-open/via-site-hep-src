rendering
renderContentOn: html
	html ukContainer: [
		html heading level1; with: [
			html t: 'tocca:unit'.
			html space.
			html text: unitNumber asString].
		
		html unorderedList class: 'modulesList uk-list uk-list-collapse'; with: [
			modules do: [ :each |
				html listItem: [
					html anchor
						callback: [ self gotoModule: each];
						with: each displayName ] ] ] ]