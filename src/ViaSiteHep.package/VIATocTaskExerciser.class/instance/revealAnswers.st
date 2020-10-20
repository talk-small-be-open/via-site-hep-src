actions
revealAnswers
	| solution |
	solution := VIATocExerciserSolutionComponent new
		exercise: exerciseGSRENAME;
"		addBackButton;"
		yourself.

	self show: solution onAnswer: [self restart]