rendering-visitor
renderDragDropDraggableInteractJs: aDraggable on: html
	html span
		script: ((html jsInteract draggable) onMoveFollowPointer);
		class: 'dragDropDraggable';
		class: aDraggable cssScope;
		passenger: aDraggable;
		with: [
"							html span class: 'dragHandle'; with: [html iconDragVertical]."
			html pillarString: aDraggable object.
			"eachDraggable acceptRenderingVisitor: self on: html"]