rendering
renderLegendOn: html
	html div class: 'legend'; with: [ 
		html t: ('tocca:legend:progress').
		1 to: 3 do: [ :index |
			html space.
			html iconProgress: index.
		].
"		(VIALevelTag allSortedForWebsite: self website) do: [ :each |
			html iconLevelTag: each.
			html span: each displayName.
		]"
	]