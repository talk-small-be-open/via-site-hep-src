initialization
initialize
	| classification |
	
	super initialize.

	currentExerciser := nil.
	exerciserComponents := nil.
	
	
	self addForm
		removeButtons.

	self addContainerDiv.
	
	classification := model overallClassification.
	subtitleTags := classification contextTags,
		classification grammarTopicTags,
		classification topicTags.
	
	self build