initialization
initialize
	| classification |
	
	super initialize.

	currentExerciser := nil.
	exerciserComponents := nil.
	
	moduleExercise ifNil: [
		moduleExercise := self currentPortfolio exerciseForModule: model].
	
	self addForm
		removeButtons.

	self addContainerDiv.
	
	classification := model overallClassification.
	subtitleTags := classification contextTags,
		classification grammarTopicTags,
		classification topicTags.
	
	self build