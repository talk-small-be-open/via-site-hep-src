rendering-visitor
renderPillarSnippet: aPillarSnippet on: html
	html span class: 'pillarSnippet'; with: [
		pillarSeasideRenderer
			seasideHtmlCanvas: html;
			start: aPillarSnippet pillarDocument]