rendering-visitor
renderObjectPairUikit: anObjectPair on: html
	| jsEventHandler jsEventHandlerStart answerHolder rightObject others |
	answerHolder := exercise answerOf: anObjectPair.

"	rightObject := anObjectPair rightPillar."
	rightObject := answerHolder value.
	others := exercise answer: #leftOvers of: anObjectPair.

"	answerHolder ifNotEmpty: [rightObject := answerHolder value]."
	
	jsEventHandler := (html jQuery ajax
		callback: [:values | self ajaxUpdateObjectPair: answerHolder rightObjects: values]
		passengers: (html jQuery this find: 'div.draggable');
		onError: (html javascript alert: 'Fehler in der Applikation!')) asFunction: #(event sortable dragged action).

	jsEventHandlerStart := 'console.log(sortable);' asFunction: #(event sortable).
				
	html div class: 'objectPair'; with: [
		html div class: 'leftObject'; with: [
			self renderHintSymbolOf: anObjectPair on: html.
			anObjectPair leftPillar acceptRenderingVisitor: self on: html].

		self renderCorrection: answerHolder on: html.

		html div
			class: 'rightObject';
			class: 'uk-sortable';
			script: (html jQuery this call: 'bind' with: 'change.uk.sortable' with: jsEventHandler);
			script: (html jQuery this bind: 'move.uk.sortable' do: jsEventHandlerStart);
			attributeAt: 'data-uk-sortable'
			put: '{group:"objectPair", dragCustomClass:"dragging", threshold: 1, animation: 500}';
			with: [
				rightObject ifNotNil: [
					html div class: 'draggable'; passenger: rightObject; with: [
						html span class: 'dragHandle'; with: [html iconDragVertical].
						rightObject acceptRenderingVisitor: self on: html]].
				
				others ifNotEmpty: [
					others value do: [:each |
						html div class: 'draggable'; passenger: each; with: [
							html span class: 'dragHandle'; with: [html iconDragVertical].
							each acceptRenderingVisitor: self on: html].
					
					]]
				
				
				]]