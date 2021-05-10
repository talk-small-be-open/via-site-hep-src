initialization
initialize
	| classification |
	
	super initialize.

	currentExerciser := nil.
	exerciserComponents := nil.
	
	
	self addForm
		removeButtons.

	"OPTIMIZE Maybe obsolete, since we decorate the current Toccamodule in the main component.
	Maybe needed, since we place it embedded somewhere?"
	self addContainerDiv addClass: (VIATocHelper toccamoduleCssOfModule: model).
	
"	classification := model overallClassification."
"	subtitleTags := classification contextTags,
		classification grammarTopicTags,
		classification topicTags."
"	isAllMothertongue := model isMothertongue."

	self build