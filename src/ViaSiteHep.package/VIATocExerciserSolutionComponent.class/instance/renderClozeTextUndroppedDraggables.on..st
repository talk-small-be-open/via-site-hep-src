rendering
renderClozeTextUndroppedDraggables: aClozeText on: html
	| dragDropInputs   |
	dragDropInputs := aClozeText dragDropPlaceholders.

	dragDropInputs ifNotEmpty: [
		html div
			class: 'dragDropDraggables';
			with: [
				| wrongDraggables |
				wrongDraggables := dragDropInputs gather: [:eachDragDrop |
					eachDragDrop wrongChoices].

				wrongDraggables do: [:each |
					self renderDragDropDraggable: each on: html.
			]
	
]]