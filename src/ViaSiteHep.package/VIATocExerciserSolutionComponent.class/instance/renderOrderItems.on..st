rendering-visitor
renderOrderItems: anOrderItems on: html
	| answerHolder answeredItems listTag |

	html div class: 'orderItems'; class: anOrderItems uiStyle; with: [

		answerHolder := exercise answerOf: anOrderItems.
		answeredItems := answerHolder value.

		listTag := anOrderItems showNumbers ifTrue: [ html orderedList ] ifFalse: [ html unorderedList ].
		
		listTag
			class: 'orderItemsList';
			with: [
			
				anOrderItems items withIndexDo: [:each :index |
					| wasCorrect |
					wasCorrect := (answeredItems indexOf: each) = index.
					
					html listItem
						class: 'orderItem solution';
						class: 'answerWasCorrect' if: wasCorrect;
						with: [
							html div class: 'orderItemContent'; with: [
"								html div class: 'orderSymbol'; with: [
									html iconOrderBullet ]."
								html div class: 'orderContent'; with: [
									each acceptRenderingVisitor: self on: html]]]]].

"		self renderCorrection: answerHolder on: html."
		].