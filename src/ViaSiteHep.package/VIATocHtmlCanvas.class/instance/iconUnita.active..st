icons
iconUnita: anInteger active: aBoolean
	"Dirty, but Harry"
	anInteger = 1 ifTrue: [ self iconUnita1Active: aBoolean. ^self ].
	anInteger = 2 ifTrue: [ self iconUnita2Active: aBoolean. ^self ].
	anInteger = 3 ifTrue: [ self iconUnita3Active: aBoolean. ^self ].
	anInteger = 4 ifTrue: [ self iconUnita4Active: aBoolean. ^self ].
	anInteger = 5 ifTrue: [ self iconUnita5Active: aBoolean. ^self ].
	anInteger = 6 ifTrue: [ self iconUnita6Active: aBoolean. ^self ].
