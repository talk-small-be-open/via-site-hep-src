rendering
renderContentOn: html

	showFinder ifTrue: [
		html render: finder ].

	html ukContainer: [

		html heading level2; with: [ html t: 'myHome:units'].

		"All units 1-6"
		html ukGrid
			class: 'uk-child-width-1-2';
			with: [
				VIATocHelper toccaunits pairsDo: [ :first :second |
					| css |
					css := (VIATocHelper toccamoduleCssOfToccaunit: first) asString.

					{ first. second } do: [ :index |
						html div: [
							html bigAnchorButton
								class: css;
								callback: [ self gotoToccaunit: index ];
								with: [
									html sT: 'myHome:unit'.
									html space.
									html text: index asString].
		]]]].
	
		html heading level2; with: [ html t: 'myHome:extras'].
		html ukGrid
			class: 'uk-child-width-1-2';
			with: [
				html div: [
					html bigAnchorButton
						class: 'toccamoduleExtras';
						callback: [ self gotoToccaunit: 'P' ];
						with: [html sT: 'myHome:palloncini']].
				html div: [
					html bigAnchorButton
						class: 'toccamoduleExtras';
						callback: [ self gotoToccaunit: 'V' ];
						with: [html sT: 'myHome:vocabolario']].
					]]