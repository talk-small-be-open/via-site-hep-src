rendering
hintBox: aUiKeyPart
	| user uiTextKey force id |
	user := self session user.

	user enabledHintBoxes ifFalse: [ ^ self ].
	
	force := user isShowHint: aUiKeyPart.
	
	uiTextKey := 'hintBox:', aUiKeyPart.
	id := self nextId.

	self div class: 'hintBox'; with: [	

		force ifFalse: [
			self span
				class: 'hintBoxToggler';
				ukToggleTarget: ('#', id);
				with: [
"					self iconHint.
					self space."
					self sT: 'hintBox:toggler' ].
	"			with: [
					self iconHint ]." ].
		
		self ukAlert
	"		class: 'hintBox';"
			class: 'uk-hidden' if: force not;
			id: id;
			with: [
				| anchor |
				force ifTrue: [
					anchor := self anchor
						class: 'uk-alert-close';
						a: 'uk-close';
						callback: [ VIATocHelper dismissHint: aUiKeyPart user: user ] ].
				
				self heading level3; t: 'hintBox:title'.
				self pT: uiTextKey.
	]]