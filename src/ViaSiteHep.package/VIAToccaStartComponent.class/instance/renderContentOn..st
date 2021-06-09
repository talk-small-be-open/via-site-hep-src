rendering
renderContentOn: html

	showFinder ifTrue: [
		html render: finder ].

	html ukContainer: [

		html heading level2; with: [ html t: 'myHome:lastVisited'].

		html ukGrid
			class: 'uk-child-width-1-3';
			with: [
				self currentPortfolio lastOpenedModule ifNotBlank: [ :m |
					html div: [
						html bigAnchorButton
							class: (VIATocHelper toccamoduleCssOfModule: m);
							callback: [ self gotoModule: m ];
							with: [
								html sT: 'myHome:gotoCurrentModule'.
								html space.
								html text: m indexCodeString].
				]].
				self currentPortfolio lastOpenedPalloncini ifNotBlank: [ :m |
					html div: [
						html bigAnchorButton
							class: (VIATocHelper toccamoduleCssOfModule: m);
							callback: [ self gotoModule: m ];
							with: [
								html sT: 'myHome:gotoCurrentPalloncini'.
								html space.
								html text: m indexCodeString].
				]].
				self currentPortfolio lastOpenedVocabolario ifNotBlank: [ :m |
					html div: [
						html bigAnchorButton
							class: (VIATocHelper toccamoduleCssOfModule: m);
							callback: [ self gotoModule: m ];
							with: [
								html sT: 'myHome:gotoCurrentVocabolario'.
								html space.
								html text: m indexCodeString].
				]].
			].

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