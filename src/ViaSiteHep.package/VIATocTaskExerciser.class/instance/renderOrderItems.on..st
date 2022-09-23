rendering-visitor
renderOrderItems: anOrderItems on: html
	| answerHolder listId items listTag |

	html div class: 'orderItems'; class: anOrderItems uiStyle; with: [

		html hintBox: 'orderItems:seeTutorial'.

		answerHolder := exercise answerOf: anOrderItems.
		items := answerHolder value.

		listId := html nextId.

		listTag := anOrderItems showNumbers ifTrue: [ html orderedList ] ifFalse: [ html unorderedList ].
		
		listTag
			id: listId;
			script: ((html jsSortable)
				group: 'orderItemsSortableList';
				draggable: 'li.orderItem';
				ghostClass: 'insertPlaceholder';
				onSort: (html jQuery ajax
					callback: [ :values | items reorderLike: values ]
					passengers: ((html jQuery id: listId) children: 'li.orderItem')
				)
			);
			class: 'orderItemsList';
			with: [
			
				items withIndexDo: [:each :index |
					| isCorrect |
					
					isCorrect := answerHolder isChecked and: [anOrderItems isCorrect: each atPosition: index].
					
					html listItem passenger: each; class: 'orderItem draggable'; with: [
						html div
							class: 'orderItemContent';
							class: 'correct' if: (self isca: isCorrect);
							with: [
								html div class: 'orderSymbol'; with: [
									html iconOrderBullet ].
								html div class: 'orderContent'; with: [
									each acceptRenderingVisitor: self on: html]]]]].

		self renderCorrection: answerHolder on: html.
		].