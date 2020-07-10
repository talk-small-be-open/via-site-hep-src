rendering-visitor
renderContentOn: html

	exerciseId := html nextId.

	html div
		class: 'mapPairsClickClick';
		id: exerciseId;
		with: [
			taskBrick pairInputs do: [:each |
				self renderObjectPair: each on: html]]