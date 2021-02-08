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

"			html div class: 'middleColumn'; with: [
				html image url: '/site/images/puzzle-cut-black.svg';
				style: 'position:relative;right:-2px;';
				width: 20.
			]."

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
					html imgPuzzle.
					self renderWithParent: rightObject on: html].
				
			html div class: 'endColumn'; with: [
				self renderCorrection: answerHolder on: html ].

			].