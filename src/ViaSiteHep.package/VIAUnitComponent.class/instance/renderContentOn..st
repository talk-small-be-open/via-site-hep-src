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
					html div class: 'moduleEntry'; with: [
						html anchor
							class: 'gotoModule';
							extraPath: each slugPath;
							callback: [ self gotoModule: each];
							with: [
								self renderModule: each on: html ].
						html span class: 'moduleStatus'; with: [ 
							showProgress ifTrue: [
								html iconProgressFromPercent: (self currentPortfolio percentDoneModule: each) ].
						]
					]
		]]]]