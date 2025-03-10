rendering-visitor
renderTextMemo: aTextMemo on: html
	| answerHolder maxChars answerItem |

	answerHolder := exercise answerOf: aTextMemo.

	"VIATextMemoAnswerItem"
	answerItem := answerHolder value.

	"TODO"
	maxChars := aTextMemo maxCharCount.

	html div class: 'textMemoBox'; class: aTextMemo uiStyle; with: [
	
		aTextMemo infoPillar acceptRenderingVisitor: self on: html.

		html textArea
			class: 'textMemo';
			on: #text of: answerItem.
			
		html label class: 'needsTeacher'; with: [ 
			html checkbox
				on: #needsTeacher of: answerItem.
			html sT: 'exerciser:needsTeacher'
		].
	
		answerItem teacherShortComment ifNotBlank: [ :t |
			html div class: 'teacherShortComment'; with: [ 
				html sT: 'exerciser:teacherShortComment'.
				html text: ': '.
				html span: t ] ].
		
		answerItem teacherPoints ifNotNil: [ :p |
			html div class: 'teacherPoints'; with: [ 
				html sT: 'exerciser:teacherPoints'.
				html text: ': '.
				html span: p greaseString ] ].
	
	]