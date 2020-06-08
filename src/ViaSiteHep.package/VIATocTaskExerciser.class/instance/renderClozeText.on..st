rendering-visitor
renderClozeText: aClozeText on: html
	html div class: 'clozeText'; with: [

		self renderClozeTextUndroppedDraggables: aClozeText on: html.

		pillarSeasideRenderer
			seasideHtmlCanvas: html;
			markerRenderingBlock: [:marker :h |
				| placeholder |
				placeholder := aClozeText placeholderForMarker: marker.
				placeholder acceptRenderingVisitor: self on: h];
			start: aClozeText pillarDocument]