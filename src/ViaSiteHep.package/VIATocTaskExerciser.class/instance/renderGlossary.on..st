rendering-visitor
renderGlossary: aGlossary on: html
	| gId |
	gId := html nextId.
	
	html div class: 'glossary'; id: gId; with: [
		"Toolbar"
		html div class: 'glossaryToolbar'; with: [
"			html span: 'GLOSSAR: LIVE SEARCH'."
			html span class: 'jumpers'; with: [
				aGlossary sectionEntries do: [ :each |
					html span
						class: 'jumper';
						onClick: (html jsWindow call: 'glossary_jumpTo' with: gId with: each htmlId);
						with: each title
				].
				html span
					class: 'jumper';
					onClick: (html jsWindow call: 'glossary_reset' with: gId);
					sT: 'exerciser:glossary:showAll'
			].
			html textInput
				class: 'searchText';
				onInput: ((html jsWindow call: 'glossary_liveSearch' with: gId) asFunction debounce: 500);
				preventEnterFormSubmit;
				placeholder: ('exerciser:glossary:search't).
		].
		
		html div class: 'glossaryBody'; with: [
			html table class: 'glossaryEntries'; with: [
				aGlossary entries do: [ :each |
					each acceptRenderingVisitor: self on: html ] ] ]
	]