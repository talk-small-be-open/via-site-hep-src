rendering
renderNonFirstTakeButtonsOn: html
	html submitButton
		class: 'recheck uk-width-1-1@s uk-width-auto@l';
"		popover: 'exerciser:recheck:info't;"
		callback: [self recheck];
		with: [
			html t: 'exerciser:recheck'.
			html small t: 'exerciser:recheck:info'.
		].
"	html space.
	html submitButton
		class: 'reset';
		popover: 'exerciser:reset:info't;
		callback: [self reset];
		with: [html t: 'exerciser:reset']."
	html space.
	html submitButton
		class: 'revealAnswers uk-width-1-1@s uk-width-auto@l';
"		popover: 'exerciser:showAnswers:info't;"
		callback: [self revealAnswers];
		with: [
			html t: 'exerciser:showAnswers'.
			html small t: 'exerciser:showAnswers:info'.
		]