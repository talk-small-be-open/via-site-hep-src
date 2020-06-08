rendering-visitor
renderDragDropDraggableJquery: aDraggable on: html
	html span
		script: (html jQuery this draggable
			scope: aDraggable taskBrick cssScope;
			opacity: 0.75;
			revert: false;
			zIndex: 1000;
			cursorAt: {#top->0. #left->0} asDictionary);
		class: 'dragDropDraggable';
		passenger: aDraggable;
		with: [
"							html span class: 'dragHandle'; with: [html iconDragVertical]."
			html pillarString: aDraggable object.
			"eachDraggable acceptRenderingVisitor: self on: html"]