rendering
renderFlashMessagesOn: html
"	(flashErrorMessages notEmpty or: [flashMessages notEmpty]) ifTrue: [
		flashErrorMessages ifNotEmpty: [
			html div class: 'alert alert-danger'; with: [
				flashErrorMessages do: [:each |
					html div: each]]]."
	flashMessages ifNotEmpty: [
		html div class: 'flashMessages'; with: [
			html div class: 'uk-alert uk-alert-success'; with: [
				flashMessages do: [:each |
					html div: [
						html iconFlashMessage; space.
						html text: each]]]].

		self clearFlashMessages]