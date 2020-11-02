rendering
renderLegendOn: html
	html div class: 'legend'; with: [ 
		1 to: 3 do: [ :index |
			html iconProgress: index.
			html space].
		html t: ('tocca:legend:progress').
	].
