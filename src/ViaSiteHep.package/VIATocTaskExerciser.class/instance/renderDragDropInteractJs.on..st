rendering-visitor
renderDragDropInteractJs: aDragDropInput on: html
	| answerValue answerCollection jsEventHandler dropTargetId |

	answerValue := exercise answerOf: aDragDropInput.

	answerCollection := answerValue value.

	self renderHintSymbolOf: aDragDropInput on: html.

"	self renderCorrection: answerValue showWrong: false on: html."
	
	dropTargetId := html nextId.

	jsEventHandler := (html jQuery ajax
		callback: [:values | self ajaxUpdateDragDrop: aDragDropInput droppedObjects: values]
		passengers: ((html jQuery id: dropTargetId) find: 'span.dragDropDraggable');
		onError: (html javascript alert: 'Error with communication to application!')).

	html span
		class: 'dragDropTarget';
		id: dropTargetId;
		script: ((html jsInteract dropzone)
			accept: '.dragDropDraggable.', aDragDropInput parentBrick cssScope;
			cssOnOver;
			onDrop: ((JSStream on: 'onDragDropDrop(event.target, event.relatedTarget)'), jsEventHandler)
		);
		with: [
			answerCollection
				ifBlank: [html space. "Für richtige Höhe"]
				ifNotBlank: [:col |
					col do: [:each |
						| isCorrect |
						isCorrect := aDragDropInput isSolution: each.
						html span class: 'draggableContainer'; with: [
							self ifca: isCorrect not t: [
								html span class: 'wrongIcon'; with: [html iconWrong].
							].
							self ifca: isCorrect t: [
								html span class: 'correctIcon'; with: [html iconCorrect].
							].
							self renderDragDropDraggable: each on: html]]]]