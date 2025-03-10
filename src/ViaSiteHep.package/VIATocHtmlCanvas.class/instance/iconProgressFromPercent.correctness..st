icons
iconProgressFromPercent: anInteger correctness: aCorrectnessInteger
	| rounded |
	rounded := aCorrectnessInteger roundTo: 10.
	self span class: ('correctness correctness', rounded asString); with: [ 
		self iconProgressFromPercent: anInteger ]