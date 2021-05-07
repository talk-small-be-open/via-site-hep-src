rendering
hintBox: aUiKeyPart
	| user |
	user := self session user.

	(VIATocHelper isShowHint: aUiKeyPart user: user) ifTrue: [
		| uiTextKey|
		uiTextKey := 'hintBox:', aUiKeyPart.
		self ukAlert
			class: 'hintBox';
			with: [
				self anchor
					class: 'uk-alert-close';
					a: 'uk-close';
					callback: [ VIATocHelper dismissHint: aUiKeyPart user: user ].
				self heading level3; t: 'hintBox:title'.
				self pT: uiTextKey.
		]].
		