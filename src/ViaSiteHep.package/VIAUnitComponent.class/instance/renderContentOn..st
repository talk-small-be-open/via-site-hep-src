rendering
renderContentOn: html
	html ukContainer with: [
		html heading level1; class: 'unitNavigation'; with: [
			html span class: 'left'; with: [
				html anchor
					callback: [ self gotoUp ];
					with: [html iconBackUp]
			].
			html span: [
				html sT: ('tocca:unit', unitNumber asString)].
			html span class: 'right'.
		].
		
		self renderLegendOn: html.
		
		html ukList class: 'modulesList'; with: [
			modules do: [ :each |
				| tag |
				tag := html listItem
"					class: 'inWork' if: (self currentPortfolio isInWorkModule: each);
					class: 'finished' if: (self currentPortfolio isDoneModule: each);"
"					class: 'mothertongue' if: each isMothertongue;"
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
							html span class: 'moduleTitle'; with: each title].
					html span class: 'moduleStatus'; with: [ 
"						(self currentPortfolio isInWorkModule: each) ifTrue: [ html span: 'W' ].
						(self currentPortfolio isDoneModule: each) ifTrue: [ html span: 'D' ]."
						html iconProgressFromPercent: (self currentPortfolio percentDoneModule: each).
					]
				] ] ] ]