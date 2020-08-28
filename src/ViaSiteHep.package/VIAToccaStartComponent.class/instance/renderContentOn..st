rendering
renderContentOn: html

	showFinder ifTrue: [
		html render: finder ].

	html ukContainer: [
		"All units 1-6"
		VIATocHelper toccaunits pairsDo: [ :first :second |
			| tmNumber |
			tmNumber := (VIATocHelper toccamoduleFromToccaunit: first) asString.

			html heading level2; with: [ html t: 'myHome:module'; space; text: tmNumber].
			html div class: ('toccamodule', tmNumber); with: [
				html ukGrid
					class: 'uk-child-width-1-2';
					with: [
						{ first. second } do: [ :index |
								html div: [
									html bigAnchorButton
										callback: [ self gotoToccaunit: index ];
										with: [
											html sT: 'myHome:unit'.
											html text: index asString] ].
				]]]].
	
			html heading level2; with: [ html t: 'myHome:extras'].
			html div class: ('toccamoduleExtras'); with: [
				html ukGrid
					class: 'uk-child-width-1-2';
					with: [
						html div: [
							html bigAnchorButton
								callback: [ self gotoToccaunit: 'P' ];
								with: [html sT: 'myHome:palloncini']].
						html div: [
							html bigAnchorButton
								callback: [ self gotoToccaunit: 'V' ];
								with: [html sT: 'myHome:vocabolario']].
			]]	
	]