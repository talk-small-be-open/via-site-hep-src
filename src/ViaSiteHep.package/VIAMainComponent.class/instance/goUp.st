as yet unclassified
goUp
	"Smart behaviour if we are inside an exercise"
	self isExercising ifTrue: [
		self gotoToccaunit: self currentModule indexCode first.
		^ self
	].
	
	
	self gotoHome