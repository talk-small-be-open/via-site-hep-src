rendering-visitor
renderTextListInput: aTextListInput on: html
	| answerValue answerCollection linesId mainId shuffledHintFragments typingAssisted isFixedLines |

	answerValue := exercise answerOf: aTextListInput.
	answerCollection := answerValue value.
	mainId := html nextId.
	linesId := html nextId.
	typingAssisted := aTextListInput withTypingAssistant.
	isFixedLines := aTextListInput hasMaxSolutionsCount.
	
	shuffledHintFragments := exercise propertyAt: #shuffledHintFragments of: aTextListInput.

	html div
		id: mainId;
		class: 'textListInput';
		class: aTextListInput uiStyle;
		with: [

"		html hintBox: 'selectMany:seeTutorial'."

			self renderHintSymbolOf: aTextListInput on: html.
			
			html div class: 'keyboardArea'; with: [
				"List of clickable hint texts"
				shuffledHintFragments ifNotBlank: [ :fragments |
					html div class: 'hintFragments'; with: [
						"Fragments are pillar documents"
						fragments do: [ :each |
							| span |
							span := html span
								class: 'hintFragment';
								yourself.
								
							typingAssisted ifTrue: [
								span
									class: 'typingAssisted';
									onClick: ( (JSStream on: 'listInput_addText') apply: { mainId. each text. aTextListInput isWholeWordsOnly } )
							].
							span with: [ html pillar: each ]
						]].

					html div class: 'hintTools'; with: [
	"						html clickButton: ( (JSStream on: 'listInput_addSpace') apply: { mainId } ) with: [
							html text: 'Leerschlag' ].
						html space."

						html clickButton: ( (JSStream on: 'listInput_gotoNextLine') apply: { mainId } ) with: [
							html iconNewline; space.
							html text: 'Weiter' ] ]
				].
			].
		
					
			html div class: 'textListLines'; id: linesId; with: [
				answerCollection withIndexDo: [ :text :index |
					self renderTextListInput: aTextListInput line: text number: index mainTagId: mainId on: html
			]].
		
			isFixedLines ifFalse: [
"				html ukSubmitButton
					callback: [
						answerCollection addAll: (Array new: 5 withAll: nil) ];
					with: '... Zeilen hinzufügen'."
					
				html
					clickButton: (html jQuery ajax
						script: [ :s |
							answerCollection add: nil.
							s << ((s jQuery id: linesId) append: [ :h | self renderTextListInput: aTextListInput line: '' number: answerCollection size mainTagId: mainId on: h ])
						])
					with: [
						html iconAdd; space.
						html text: 'Zeile hinzufügen' ].
					
			].

		]