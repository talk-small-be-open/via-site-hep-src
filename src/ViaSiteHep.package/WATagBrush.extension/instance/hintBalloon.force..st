*ViaSiteHep
hintBalloon: aUiKeyPart force: aForceBoolean
	| popoverOptions htmlString uiTextKey show onHideJs user |

	"Check, if user needs hint"
	user := self session user.
	show := aForceBoolean ifFalse: [
		(VIATocHelper isShowHint: aUiKeyPart user: user)
			ifFalse: [ ^ self ] ].

	uiTextKey := 'hintBalloon:', aUiKeyPart.
	htmlString := VIAPrInlineHtmlWriter write: (self session getUiText: uiTextKey).

	onHideJs := (canvas jQuery ajax callback: [ VIATocHelper dismissHint: aUiKeyPart user: user ])
		asFunction: #(element).

	popoverOptions := {
		#title->'hintBalloon:title't.
		#placement->'auto'.
		#closeable->true.
		#trigger->'sticky'.
		#animation->'pop'.
		#dismissible->false.
		#style->'hintBalloon'.
		#onHide->onHideJs.
	} asDictionary.

	self script: (canvas jsWebuiPopover: htmlString options: popoverOptions)