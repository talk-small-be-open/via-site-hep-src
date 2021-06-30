rendering-visitor
renderPillarSnippet: aPillarSnippet on: html
	html div class: 'pillarSnippet'; class: aPillarSnippet uiStyle; with: [
		pillarSeasideRenderer
			seasideHtmlCanvas: html;
			start: aPillarSnippet pillarDocument]