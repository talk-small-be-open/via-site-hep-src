rendering-visitor
renderMapPairs: aMapPairs on: html
	html div class: 'mapPairs'; with: [
		aMapPairs pairInputs do: [:each |
			each acceptRenderingVisitor: self on: html]]