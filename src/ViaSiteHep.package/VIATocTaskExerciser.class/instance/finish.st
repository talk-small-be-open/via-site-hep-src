as yet unclassified
finish

	"Mehrfach-Robustheit"
	self isFinished ifTrue: [^self].
	
	exerciseGSRENAME beFinished.
"	self removeDecoration: formDecoration.
	formDecoration := nil."
	
	self show: ((VIATocExerciserFinishedComponent exercise: exerciseGSRENAME)
		displayCongratulation;
		yourself) onAnswer: [self close].
	onFinishBlock ifNotNil: [onFinishBlock value]