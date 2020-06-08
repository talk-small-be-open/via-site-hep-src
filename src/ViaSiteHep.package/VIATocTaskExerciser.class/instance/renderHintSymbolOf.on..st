rendering
renderHintSymbolOf: aBrick on: html
	| popoverOptions |
	aBrick hasHintText ifTrue: [
		popoverOptions := {
			#title->''.
			#content->(VIAHelper inlineHtmlFromPillar: aBrick hintText).
			#closeable->false.
			#placement->'top'.
			#trigger->'hover'.
			#multi->true.
			#padding->true.
		} asDictionary.

		html span
			class: 'hintSymbol';
			script: (html jQuery this call: 'webuiPopover' with: popoverOptions);
			with: [
			html iconHint
	"			onFocus: (html jQuery this call: 'webuiPopover' with: 'show');
				onBlur: (html jQuery this call: 'webuiPopover' with: 'hide')."
		]].