rendering-visitor
renderDragDropInteractJs: aDragDropInput on: html
	| answerValue answerCollection jsEventHandler dropTargetId |

	answerValue := exercise answerOf: aDragDropInput.

	answerCollection := answerValue value.

	self renderHintSymbolOf: aDragDropInput on: html.

	self renderCorrection: answerValue on: html.
	
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
						self renderDragDropDraggable: each on: html]]]