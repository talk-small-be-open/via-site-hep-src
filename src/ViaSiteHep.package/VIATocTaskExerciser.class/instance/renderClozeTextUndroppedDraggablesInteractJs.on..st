rendering-visitor
renderClozeTextUndroppedDraggablesInteractJs: aClozeText on: html
	"Die noch nicht verteilten Draggables rendern"
	| dragDropInputs shuffledDragDropChoices jsEventHandler |
	dragDropInputs := aClozeText dragDropPlaceholders.

	dragDropInputs ifNotEmpty: [

		shuffledDragDropChoices := exercise propertyAt: #shuffledDragDropChoices of: aClozeText.

		jsEventHandler := (html jQuery ajax
			callback: [:values | self ajaxUndrop: values in: aClozeText]
			passengers: '$(event.relatedTarget)';
			onError: (html javascript alert: 'Error with communication to application!')).

		html div
			class: 'dragDropDraggables';
			script: ((html jsInteract dropzone)
				accept: '.dragDropDraggable.', aClozeText cssScope;
				cssOnOver;
				onDrop: ((JSStream on: 'onDragDropDrop(event.target, event.relatedTarget)'), jsEventHandler)
			);
			with: [
				| usedDraggables |
				usedDraggables := dragDropInputs gather: [:eachDragDrop |
					(exercise answerOf: eachDragDrop) value ifNil: [#()]].

				(shuffledDragDropChoices copyWithoutAll: usedDraggables) do: [:each |
					self renderDragDropDraggable: each on: html.
			]
]]