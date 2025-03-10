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
	
		aTextMemo isCheckable ifTrue: [ 
			html div
				class: 'teacherInteraction' if: answerItem needsTeacher;
				with: [
					| formBody |
					
					html div class: 'title'; sT: 'teacherViewTaskExerciser:teacherFeedback'.
					
					formBody := [ 
						html textInput
							class: 'input-xlarge';
							on: #teacherShortComment of: answerItem.
						html break.
						html numberInput
							min: 0;
							max: aTextMemo maxTeacherPoints;
							on: #teacherPoints of: answerItem.
						html span: [ 
							html text: ' 0 - '.
							html text: aTextMemo maxTeacherPoints greaseString ].
					].
				
					answerItem needsTeacher ifFalse: formBody ifTrue: [ 
						html form: [ 
							html render: formBody.
							html div class: 'topBuffer'; with: [ 
								html submitButton
									callback: [ self teacherOkTextMemoAnswer: answerItem ];
									sT: 'teacherViewTaskExerciser:saveTeacherFeedback'.
							]
					 ] ]
				]
		]
	]