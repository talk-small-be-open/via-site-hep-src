as yet unclassified
finish

	"Mehrfach-Robustheit"
	self isFinished ifTrue: [^self].
	
	exercise beFinished.
"	self removeDecoration: formDecoration.
	formDecoration := nil."
	
	self show: ((VIAExerciserFinishedComponent exercise: exercise)
		displayCongratulation;
		yourself) onAnswer: [self close].
	onFinishBlock ifNotNil: [onFinishBlock value]