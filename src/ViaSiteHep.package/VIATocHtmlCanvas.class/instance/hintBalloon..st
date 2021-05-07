rendering
hintBalloon: aKey
	(VIATocHelper isShowHint: aKey user: self session user) ifTrue: [
		self span
			hintBalloon: aKey force: true;
			with: [ self iconInfo ]]