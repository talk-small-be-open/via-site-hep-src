as yet unclassified
goUp
	self deprecated: 'not of use, i think'.
	"Smart behaviour if we are inside an exercise"
	self isExercising ifTrue: [
		self gotoToccaunit: self currentModule indexCode first.
		^ self
	].
	
	
	self gotoHome