rendering
renderContentOn: html
	html ukContainer: [
		html heading level1; t: 'login:title'.

		self renderHepLoginOn: html.

		localEnabled ifTrue: [
			self renderLocalLoginOn: html ].

"		html div: [ 
			html anchor
				callback: [ self registerNewUser ];
				with: [ html iconRight; t: 'login:register'].
			html break; break.
			html anchor
				callback: [ self registerAsTeacher ];
				with: [ html iconRight; t: 'login:registerAsTeacher'].
			html break.
			html anchor
				callback: [ self showLoginSupport ];
				with: [ html iconRight; t: 'login:support'].
		]."

		self ifDevelopment: [
			html break; break.
			self renderQuickLoginOn: html]].
	
