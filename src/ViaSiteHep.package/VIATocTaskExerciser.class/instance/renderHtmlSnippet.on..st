rendering-visitor
renderHtmlSnippet: aHtmlSnippet on: html
	html span class: 'htmlSnippet'; class: aHtmlSnippet uiStyle; with: [
		html html: aHtmlSnippet htmlString]