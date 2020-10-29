rendering
renderContentOn: html
	html ukContainer with: [
		html heading level1; with: [
			html sT: ('tocca:unit', unitNumber asString)].
		
		html ukList class: 'modulesList'; with: [
			modules do: [ :each |
				| tag |
				tag := html listItem
					class: 'inWork' if: (self currentPortfolio isInWorkModule: each);
					class: 'finished' if: (self currentPortfolio isDoneModule: each);
					yourself.
				each levelTag ifNotNil: [ :lt |
					tag class: ('level-', lt code) ].
				
				tag with: [
					html anchor
						callback: [ self gotoModule: each];
						with: [
							html span class: 'indexCode'; with: each indexCodeString.
"Im Moment nicht gewünscht								html span class: 'duration'; with: [ 
								html iconDurationTag: each durationTag ]."
							html span class: 'moduleTitle'; with: each title] ] ] ] ]