rendering-visitor
renderTextMemo: aTextMemo on: html
	| answerHolder maxChars |

	answerHolder := exercise answerOf: aTextMemo.

	"TODO"
	maxChars := aTextMemo maxCharCount.

	html div class: 'textMemo'; class: aTextMemo uiStyle; with: [
	
		aTextMemo infoPillar acceptRenderingVisitor: self on: html.

		html textArea
	"		ensureId;"
			class: 'textMemo';
			callback: [:value | answerHolder value: (self sanitizeUserTextInput: value) ];
			value: answerHolder value ]