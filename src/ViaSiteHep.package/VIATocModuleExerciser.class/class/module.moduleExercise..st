as yet unclassified
module: aModule moduleExercise: aModuleExercise
	^self basicNew
		setModel: aModule;
		setModuleExercise: aModuleExercise;
		initialize;
		start;
		yourself.