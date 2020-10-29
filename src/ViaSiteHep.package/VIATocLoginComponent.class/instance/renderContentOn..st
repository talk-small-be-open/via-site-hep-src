rendering
renderContentOn: html
	html ukContainer: [
		html heading level1; t: 'login:title'.

		self renderHepLoginOn: html.

		html div: [ 
			html anchor
				callback: [ self registerNewUser ];
				with: [ html iconRight; t: 'login:register']
		].

		self ifDevelopment: [
			html break; break.
			self renderQuickLoginOn: html]]