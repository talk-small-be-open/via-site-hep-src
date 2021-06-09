rendering-visitor
renderClozeText: aClozeText on: html
	html div class: 'clozeText'; class: aClozeText uiStyle; with: [

		aClozeText hasTextPlaceholders ifTrue: [
			html hintBox: 'clozeText:textInput:seeTutorial' ].

		aClozeText hasDragDropPlaceholders ifTrue: [
			html hintBox: 'clozeText:dragDrop:seeTutorial' ].

		self renderClozeTextUndroppedDraggables: aClozeText on: html.

		pillarSeasideRenderer
			seasideHtmlCanvas: html;
			markerRenderingBlock: [:marker :h |
				| placeholder |
				placeholder := aClozeText placeholderForMarker: marker.
				placeholder acceptRenderingVisitor: self on: h];
			start: aClozeText pillarDocument]