rendering
hintBalloon: aKey
	(self session user isShowHint: aKey) ifTrue: [
		self span
			hintBalloon: aKey force: true;
			with: [ self iconInfo ]]