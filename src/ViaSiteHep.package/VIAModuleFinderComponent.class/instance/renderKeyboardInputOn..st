rendering
renderKeyboardInputOn: html
	html div class: 'keyboard'; with: [
		html ukGrid class: 'uk-grid-small uk-child-width-1-3'; with: [
			(1 to: 9) do: [ :each |
				| label |
				label := each asString.
				html div: [
					html span
						onClick: 'kbd.type("', label, '")';
						class: 'keyboardButton';
						with: label ]
		].

		html div: [
			html span
				onClick: 'kbd.clear(); kbd.type("P")';
				class: 'keyboardButton';
				with: 'P'].

		html div: [
			html span
				onClick: 'kbd.type("0")';
				class: 'keyboardButton';
				with: '0' ].

		html div: [
			html span
				onClick: 'kbd.clear(); kbd.type("V")';
				class: 'keyboardButton';
				with: 'V' ].

		html div: [
			html span
				onClick: 'kbd.backspace()';
				class: 'keyboardButton';
				with: [ html iconBackspace ] ].

"		html div: [
			html span
				onClick: 'kbd.dot()';
				class: 'keyboardButton';
				with: '.' ]."

		html div: [
		].

"		html div: [
			html span
				onClick: 'kbd.clear()';
				class: 'keyboardButton';
				with: [ html iconDelete ] ]."

		html div: [
			html button
				beSubmit;
				class: 'keyboardButton go';
				callback: [ self goAhead ];
				t: 'moduleFinder:go' ].

	]]