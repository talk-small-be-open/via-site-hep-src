rendering-visitor
renderOrderItems: anOrderItems on: html
	| answerHolder listId items |

	html div class: 'orderItems'; with: [
		answerHolder := exercise answerOf: anOrderItems.
		items := answerHolder value.

		listId := html nextId.

		html unorderedList
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
			
				items do: [:each |
					html listItem passenger: each; class: 'orderItem'; with: [
						each acceptRenderingVisitor: self on: html]]].

		self renderCorrection: answerHolder on: html.
		].