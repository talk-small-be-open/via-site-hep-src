actions
revealAnswers
	| solution |
	solution := VIATocExerciserSolutionComponent new
		exercise: exercise;
"		addBackButton;"
		yourself.

	self show: solution onAnswer: [self restart]