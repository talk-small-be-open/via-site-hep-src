actions
revealAnswers
	| solution |
	solution := VIAExerciserSolutionComponent new
		exercise: exercise;
"		addBackButton;"
		yourself.

	self show: solution onAnswer: [self restart]