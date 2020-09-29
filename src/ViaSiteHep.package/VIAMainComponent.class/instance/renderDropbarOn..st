rendering
renderDropbarOn: html
	html div
		class: 'uk-navbar-dropdown';
		a: 'uk-drop' p: 'boundary: !nav; boundary-align: true; pos: bottom-justify;';
		with: [
			html form noAutocomplete; class: 'searchForm uk-form-horizontal'; with: [
				html textInput
					noAutocomplete;
					callback: [ :value | self gotoSmartFromString: value ];
					placeholder: 'main:searchPlaceholder't;
					class: 'searchInput uk-input uk-width-1-1'.
				html ukSubmitButton
					beSubmit;
					class: '';
					with: [ html iconSearch].
			]]
