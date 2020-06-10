initialization
initialize
	| classification |
	
	super initialize.

	currentExerciser := nil.
	exerciserComponents := nil.
	
	
	self addForm
		removeButtons.

	self addContainerDiv addClass: (VIATocHelper toccamoduleCssOfModule: model).
	
	classification := model overallClassification.
	subtitleTags := classification contextTags,
		classification grammarTopicTags,
		classification topicTags.
	
	self build