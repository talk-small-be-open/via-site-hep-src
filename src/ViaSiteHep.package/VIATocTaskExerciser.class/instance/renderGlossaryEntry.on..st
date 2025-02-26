rendering-visitor
renderGlossaryEntry: aGlossaryEntry on: html
	html tableRow
		class: 'glossaryEntry';
		id: aGlossaryEntry htmlId;
		class: 'section' if: aGlossaryEntry isSection;
		attributeAt: 'data-simple-term' put: aGlossaryEntry simpleTerm;
		with: [ 
			html tableData class: 'title'; with: [
"				html span class: 'referenceCode'; beHidden; with: (VIAHelper sanitizeToLatin1: aGlossaryEntry title)."
				
				aGlossaryEntry isSyntaxEmpty ifTrue: [
					html text: aGlossaryEntry title
				] ifFalse: [
					html pillar: aGlossaryEntry syntax pillarDocument
				].
			].
			html tableData class: 'description'; with: [ 
				html pillar: aGlossaryEntry description pillarDocument ] ]