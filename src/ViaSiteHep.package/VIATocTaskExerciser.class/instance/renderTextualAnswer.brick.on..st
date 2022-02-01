rendering
renderTextualAnswer: aStringishAnswer brick: aBrick on: html
	"See also plain text variant labelForTextualAnswer:brick: "

	| string |
	
	aStringishAnswer = VIABlankAnswerItem default ifTrue: [
		html span
			class: 'emptyAnswerPlaceholder';
			t: 'exerciser:emptyAnswerPlaceholder'.
		^ self ].

	aStringishAnswer ifBlank: [ ^ self ].
	
	string := aStringishAnswer asString.
	
	"Tiny snippets, possibly utf8 icons or similar, considered as plain text"
	string size <= 4 ifTrue: [ html text: string. ^ self ].

	html pillarString: string