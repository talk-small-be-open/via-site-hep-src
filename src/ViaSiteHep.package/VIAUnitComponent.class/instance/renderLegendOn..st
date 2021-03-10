rendering
renderLegendOn: html
	showProgress ifTrue: [
		html div class: 'legend'; with: [ 
			html t: ('tocca:legend:progress').
			1 to: 3 do: [ :index |
				html space.
				html iconProgress: index.
			].
		].
	]