rendering-visitor
renderObjectPair: anObjectPair on: html
	| answerHolder rightObject jsEventHandler objectPairId rightObjectId |

	objectPairId := html nextId.
	rightObjectId := html nextId.

	answerHolder := self exercise answerOf: anObjectPair.

	rightObject := answerHolder value.

	jsEventHandler := (html jQuery ajax
		callback: [:values | self ajaxPairSelected: values]
		passengers: (((html jQuery id: exerciseId) find: 'div.leftObject.selected') add: ('#', rightObjectId));
		dataType: 'json';
		onSuccess: (('onMapPairsSelectionResult(ok, "', exerciseId,'", "', rightObjectId,'")') asFunction: #(ok status));
		onError: (html javascript alert: 'Error with communication to application!')).

	html div
		class: 'objectPair';
		id: objectPairId;
		with: [
			self renderHintSymbolOf: anObjectPair on: html.
			html div
				class: 'leftObject';
				passenger: anObjectPair;
				script: (html jsInteract pointer
					onTap: 'onMapPairsTapLeft(event.interactable.target)');
				with: [
					self renderWithParent: anObjectPair leftPillar on: html].

			html div class: 'middleColumn'; with: [
				self renderCorrection: answerHolder on: html ].

			html div
				class: 'rightObject';
				id: rightObjectId;
				passenger: anObjectPair;
				script: (html jsInteract pointer
					onTap: (((JSStream on: 'window')
						call: 'onMapPairsTapRight'
						with: (JSStream on: 'event.interactable.target')
						with: jsEventHandler asFunction
						) asFunction: #(event))
				);
"					(JSStream on: 'onMapPairsTapRight(event.interactable.target)'),
						jsEventHandler)"
				with: [
					self renderWithParent: rightObject on: html]].
