rendering
renderFlashMessagesOn: html
	flashMessages ifNotEmpty: [
		flashMessages do: [:each |
			| textMessage htmlFragment js options |
			textMessage := each t.
			htmlFragment := VIAHelper inlineHtml: [:h | 
				h iconFlashMessage; space.
				h span: textMessage].
			options := { 'pos'->'top-center'. 'status'->'success'. 'timeout'->3000 } aD.
			js := JSStream new.

			js nextPutAll: 'UIkit.notification('.
			js javascript: htmlFragment.
			js nextPutAll: ', '.
			js json: options.
			js nextPutAll: ')'.
			
			html scriptDefer: js
		].

	self clearFlashMessages]