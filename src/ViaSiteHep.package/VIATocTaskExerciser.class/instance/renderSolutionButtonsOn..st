rendering
renderSolutionButtonsOn: html
	html ukAnchorButton
		class: 'reset uk-width-1-1@s uk-width-auto@l';
"		popover: 'exerciser:reset:info't;"
		callback: [self reset];
		with: [
			html t: 'exerciser:reset'.
			html small t: 'exerciser:reset:info'.
		].