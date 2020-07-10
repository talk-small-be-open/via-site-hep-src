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
						class: 'button keyboardButton';
						with: label ]
		].

		html div: [
			html span
				onClick: 'kbd.clear(); kbd.type("P")';
				class: 'button keyboardButton';
				with: 'P'].

		html div: [
			html span
				onClick: 'kbd.type("0")';
				class: 'button keyboardButton';
				with: '0' ].

		html div: [
			html span
				onClick: 'kbd.clear(); kbd.type("V")';
				class: 'button keyboardButton';
				with: 'V' ].

		html div: [
			html span
				onClick: 'kbd.backspace()';
				class: 'button keyboardButton';
				with: '<-' ].

		html div: [
			html span
				onClick: 'kbd.dot()';
				class: 'button keyboardButton';
				with: '.' ].

		html div: [
			html span
				onClick: 'kbd.clear()';
				class: 'button keyboardButton';
				with: 'X' ].

	]]