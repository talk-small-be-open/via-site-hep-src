rendering
renderContentOn: html
	html ukContainer with: [
		html heading level1; with: [
			html t: 'tocca:unit'.
			html space.
			html text: unitNumber asString].
		
		html unorderedList class: 'modulesList uk-list uk-list-collapse'; with: [
			modules do: [ :each |
				html listItem: [
					html anchor
						callback: [ self gotoModule: each];
						with: [
							html span class: 'indexCode'; with: each indexCodeString.
							html span class: 'moduleTitle'; with: each title] ] ] ] ]