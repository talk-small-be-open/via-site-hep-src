rendering-visitor
renderDragDropJquery: aDragDropInput on: html
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
		script: (html jQuery this droppable
			scope: aDragDropInput parentBrick uuidString;
			accept: '.dragDropDraggable';
			hoverClass: 'dragDropTargetHover';
			onDrop: (((JSStream on: 'onDragDropDrop($(this), ui.draggable)'), jsEventHandler) asFunction: #(event ui));
			tolerance: 'pointer');
		with: [
			answerCollection
				ifBlank: [html space. "Für richtige Höhe"]
				ifNotBlank: [:col |
					col do: [:each |
						self renderDragDropDraggable: each on: html]]].