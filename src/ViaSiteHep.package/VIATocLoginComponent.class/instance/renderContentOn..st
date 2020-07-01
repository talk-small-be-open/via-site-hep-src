rendering
renderContentOn: html
	html ukContainer: [
		html heading level1; t: 'login:title'.
		html paragraph t: messageKey.

	"	local ifTrue: [
			html div class: 'uk-margin'; with: [
				self renderLocalLoginOn: html.
		]]."
			
		self renderHepLoginOn: html.

		html div: [ 
			html anchor
				callback: [ self devLoginAnyone ];
				with: [ html iconRight; text: 'TEST-LOGIN: Direkt einloggen'].
			html break.
			html anchor
				callback: [ self registerNewUser ];
				with: [ html iconRight; text: 'Registrieren']
		].

		self ifDevelopment: [
			html break; break.
			self renderQuickLoginOn: html]]