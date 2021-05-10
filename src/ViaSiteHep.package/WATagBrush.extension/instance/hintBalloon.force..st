*ViaSiteHep
hintBalloon: aUiKeyPart force: aForceBoolean
	| popoverOptions htmlString uiTextKey show onHideJs user id |

	"Check, if user needs hint"
	user := self session user.
	show := aForceBoolean ifFalse: [
		(VIATocHelper isShowHint: aUiKeyPart user: user)
			ifFalse: [ ^ self ] ].

	uiTextKey := 'hintBalloon:', aUiKeyPart.
	htmlString := VIAPrInlineHtmlWriter write: (self session getUiText: uiTextKey).

	onHideJs := (canvas jQuery ajax callback: [ VIATocHelper dismissHint: aUiKeyPart user: user ])
		asFunction: #(element).

	id := self ensureId.
	
	popoverOptions := {
		#title->'hintBalloon:title't.
		#container->((canvas jQuery id: id) parent).
		#placement->'auto'.
		#closeable->true.
		#trigger->'sticky'.
		#animation->'pop'.
		#dismissible->false.
		#style->'hintBalloon'.
		#onHide->onHideJs.
	} asDictionary.

	self script: (canvas jsWebuiPopover: htmlString options: popoverOptions)