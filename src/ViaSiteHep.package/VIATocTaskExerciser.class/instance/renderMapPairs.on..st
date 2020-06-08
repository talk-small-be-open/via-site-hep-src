rendering-visitor
renderMapPairs: aMapPairs on: html
	html div class: 'mapPairs'; with: [
		"html paragraph: 'Ordnen Sie zu!'."
		aMapPairs pairInputs do: [:each |
			each acceptRenderingVisitor: self on: html]]