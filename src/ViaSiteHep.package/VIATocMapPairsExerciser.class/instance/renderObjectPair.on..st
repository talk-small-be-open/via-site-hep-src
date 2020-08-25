rendering-visitor
renderObjectPair: anObjectPair on: html
	| answerHolder leftObject rightObject |

	answerHolder := self exercise answerOf: anObjectPair.

	rightObject := answerHolder value.
	leftObject := anObjectPair leftPillar.

	html div
		class: 'objectPair';
		with: [
			self renderHintSymbolOf: anObjectPair on: html.
			html div
				class: 'leftObject';
				passenger: anObjectPair;
				script: (html jsInteract pointer
					onTap: (((JSStream on: 'window')
						call: 'onMapPairsTapLeft'
						with: exerciseId
						with: (JSStream on: 'event.interactable.target')
						with: jsEventHandler asFunction
						) asFunction: #(event))
					);
				with: [
					self renderWithParent: leftObject on: html].

			html div class: 'middleColumn'; with: [
				self renderCorrection: answerHolder on: html ].

			html div
				class: 'rightObject';
				passenger: answerHolder;
				script: (html jsInteract pointer
					onTap: (((JSStream on: 'window')
						call: 'onMapPairsTapRight'
						with: exerciseId
						with: (JSStream on: 'event.interactable.target')
						with: jsEventHandler asFunction
						) asFunction: #(event))
				);
				with: [
					self renderWithParent: rightObject on: html]].
