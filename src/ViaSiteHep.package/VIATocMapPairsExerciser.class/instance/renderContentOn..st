rendering-visitor
renderContentOn: html
	html div class: 'mapPairs'; with: [
		taskBrick pairInputs do: [:each |
			self renderObjectPair: each on: html]]