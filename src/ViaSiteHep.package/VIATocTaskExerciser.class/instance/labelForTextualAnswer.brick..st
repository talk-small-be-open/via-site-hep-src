as yet unclassified
labelForTextualAnswer: aStringishAnswer brick: aBrick
	aStringishAnswer = VIABlankAnswerItem default ifTrue: [ ^ 'exerciser:emptyAnswerPlaceholder't ].
	
	^ aStringishAnswer asString