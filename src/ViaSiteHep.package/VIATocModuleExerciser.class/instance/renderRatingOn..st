rendering
renderRatingOn: html
	html span class: 'uk-visible@s rating'; with: [
		| r |
		r := model rating value.
		
		1 to: 5 do: [:index |
			index <= r ifTrue: [html iconStar].
			index > r ifTrue: [html iconStarEmpty]].
	
		html space.
		html text: '('.
		html text: model rating count asString.
		html text: ')'
	]