rendering
renderDropbarOn: html
	html div
		class: 'uk-navbar-dropdown';
		a: 'uk-drop' p: 'boundary: !nav; boundary-align: true; pos: bottom-justify; mode: click;';
		script: (html jQuery this on: 'shown' do: '$(this).find(".searchInput").focus()');
		with: [
			html form noAutocomplete; class: 'searchForm uk-form-horizontal'; with: [
				html textInput
					noAutocomplete;
					callback: [ :value | self gotoSmartFromString: value ];
					placeholder: 'main:searchPlaceholder't;
					class: 'searchInput uk-input uk-width-5-6'.
				html ukSubmitButton
					beSubmit;
					class: 'uk-width-1-6';
					with: [ html iconSearch ].
			]]
