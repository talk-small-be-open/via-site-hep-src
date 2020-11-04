rendering-visitor
renderClozeTextUndroppedDraggablesJquery: aClozeText on: html
	"Die noch nicht verteilten Draggables rendern"
	| dragDropInputs shuffledDragDropChoices jsEventHandler |
	dragDropInputs := aClozeText dragDropPlaceholders.

	dragDropInputs ifNotEmpty: [

		shuffledDragDropChoices := exercise propertyAt: #shuffledDragDropChoices of: aClozeText.

		jsEventHandler := (html jQuery ajax
			callback: [:values | self ajaxUndrop: values in: aClozeText]
			passengers: '$(ui.draggable)';
			onError: (html javascript alert: 'Error with communication to application!')).

		html div
			class: 'dragDropDraggables';
			script: (html jQuery this droppable
				scope: aClozeText uuidString;
				accept: '.dragDropDraggable';
				hoverClass: 'dragDropTargetHover';
				onDrop: (((JSStream on: 'onDragDropDrop($(this), ui.draggable)'), jsEventHandler) asFunction: #(event ui));
				tolerance: 'pointer');

			with: [
				| usedDraggables |
				usedDraggables := dragDropInputs gather: [:eachDragDrop |
					(exercise answerOf: eachDragDrop) value ifNil: [#()]].

				(shuffledDragDropChoices copyWithoutAll: usedDraggables) do: [:each |
					self renderDragDropDraggable: each on: html.
			]
	
]]