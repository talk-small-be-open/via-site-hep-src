rendering-visitor
renderHighlightAreas: aHighlightAreas on: html
	| renderer |
	renderer := self exerciserFor: aHighlightAreas class: VIAHighlightAreasV2Renderer.
	aHighlightAreas acceptRenderingVisitor: renderer on: html