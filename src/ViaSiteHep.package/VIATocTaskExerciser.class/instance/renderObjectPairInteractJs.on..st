rendering-visitor
renderObjectPairInteractJs: anObjectPair on: html
	| answerHolder rightObject others jsEventHandler rightObjectId |
	answerHolder := exercise answerOf: anObjectPair.

	rightObject := answerHolder value.
	others := exercise answer: #leftOvers of: anObjectPair.

	rightObjectId := html nextId.

	jsEventHandler := (html jQuery ajax
		callback: [:values | self ajaxUpdateObjectPair: anObjectPair rightObjects: values]
		passengers: ((html jQuery id: rightObjectId) find: 'div.objectPairDraggable');
		onError: (html javascript alert: 'Error with communication to application!')).

	html div class: 'objectPair';
		script: ((html jsInteract dropzone)
			accept: '.objectPairDraggable.', anObjectPair mapPairsTaskBrick cssScope;
			cssOnOver;
			onDrop: ((JSStream on: 'onMapPairsDrop(event.target, event.relatedTarget)'), jsEventHandler)
		);

		with: [
			html div class: 'leftObject'; with: [
				self renderHintSymbolOf: anObjectPair on: html.
				anObjectPair leftPillar acceptRenderingVisitor: self on: html].

			html div class: 'middleColumn'; with: [
				self renderCorrection: answerHolder on: html ].

			html div
				class: 'rightObject';
				id: rightObjectId;
				with: [
					| draggableRenderer |
					draggableRenderer := [:eachDraggable |
						html div
							script: ((html jsInteract draggable)
								onMoveFollowPointer;
								yourself
							);
	"						script: (html jQuery this draggable
							scope: anObjectPair mapPairsTaskBrick uuidString;
								opacity: 0.75;
								revert: 'invalid';
								zIndex: 1000;
								cursorAt: {#top->0. #left->0} asDictionary);"
							class: 'objectPairDraggable';
							class: anObjectPair mapPairsTaskBrick cssScope;
							passenger: eachDraggable;
							with: [
								html span class: 'dragHandle'; with: [html iconDragVertical].
								eachDraggable acceptRenderingVisitor: self on: html]].
					
					rightObject ifNotNil: [draggableRenderer value: rightObject].

					others ifNotEmpty: [
						others value do: [:each |
							draggableRenderer value: each
					]]]]