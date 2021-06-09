rendering
renderSaveOnlyButtonsOn: html
	html submitButton
		class: 'check uk-width-1-1@s uk-width-auto@l';
		callback: [ self saveButtonClicked ];
		with: [ html t: 'exerciser:save']