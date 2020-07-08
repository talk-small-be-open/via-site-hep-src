rendering-visitor
renderObjectPair: anObjectPair on: html
	| answerHolder rightObject jsEventHandler rightObjectId |
	answerHolder := self exercise answerOf: anObjectPair.

	rightObject := answerHolder value.
	rightObjectId := html nextId.

	jsEventHandler := (html jQuery ajax
		callback: [:values | self ajaxUpdateObjectPair: anObjectPair rightObjects: values]
		passengers: ((html jQuery id: rightObjectId) find: 'div.objectPairDraggable');
		onError: (html javascript alert: 'Error with communication to application!')).

	html div
		class: 'objectPair';
		with: [
			html div class: 'leftObject'; with: [
				self renderHintSymbolOf: anObjectPair on: html.
				html div
					script: (html jsInteract pointer
						onTap: '$(event.target).css("color", "red")');
					with: [
						self renderWithParent: anObjectPair leftPillar on: html]].

			html div class: 'middleColumn'; with: [
				self renderCorrection: answerHolder on: html ].

			html div
				class: 'rightObject';
				id: rightObjectId;
				with: [
					html div
						class: 'objectPairDraggable';
						class: anObjectPair mapPairsTaskBrick cssScope;
						passenger: rightObject;
						with: [
							self renderWithParent: rightObject on: html]].

			]