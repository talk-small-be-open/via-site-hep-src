as yet unclassified
renderHighlightAreas: aHighlightAreas on: html
	self subRender: aHighlightAreas type: VIAHighlightAreasV2SolutionRenderer on: html
"	html div
		class: 'highlightAreas';
		with: [
			pillarSeasideRenderer
				seasideHtmlCanvas: html;
				markerRenderingBlock: [:marker :h |
					| area |
					area := aHighlightAreas areaForMarker: marker.
					area acceptRenderingVisitor: self on: h];
				start: aHighlightAreas pillarDocument]"