rendering
renderContentOn: html
	html ukContainer with: [
		html heading level1; with: [
			html t: ('tocca:unit', unitNumber asString)].
		
		html unorderedList class: 'modulesList uk-list uk-list-collapse'; with: [
			modules do: [ :each |
				html listItem
					class: 'inWork' if: (self currentPortfolio isInWorkModule: each);
					class: 'finished' if: (self currentPortfolio isDoneModule: each);
					with: [
						html anchor
							callback: [ self gotoModule: each];
							with: [
								html span class: 'indexCode'; with: each indexCodeString.
"Im Moment nicht gewünscht								html span class: 'duration'; with: [ 
									html iconDurationTag: each durationTag ]."
								html span class: 'moduleTitle'; with: each title] ] ] ] ]