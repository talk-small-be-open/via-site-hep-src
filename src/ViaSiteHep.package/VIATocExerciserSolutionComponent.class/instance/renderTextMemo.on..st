rendering
renderTextMemo: aTextMemo on: html
	| answerHolder answerItem |

	answerHolder := exercise answerOf: aTextMemo.

	"VIATextMemoAnswerItem"
	answerItem := answerHolder value.

	html div class: 'textMemoBox'; class: aTextMemo uiStyle; with: [
	
		aTextMemo infoPillar acceptRenderingVisitor: self on: html.

		html div
			class: 'textMemo';
			with: answerItem text.
			
		answerItem teacherShortComment ifNotBlank: [ :t |
			html div class: 'teacherShortComment'; with: t ].
		
		answerItem teacherPoints ifNotNil: [ :p |
			html div class: 'teacherPoints'; with: p greaseString].
	
	]