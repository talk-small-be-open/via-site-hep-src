initialization
initialize
	| classification |
	
	super initialize.

	currentExerciser := nil.
	exerciserComponents := nil.
	
	
	self addForm
		removeButtons.

	self addContainerDiv addClass: (VIATocHelper toccamoduleCssOfModule: model).
	
"	classification := model overallClassification."
"	subtitleTags := classification contextTags,
		classification grammarTopicTags,
		classification topicTags."
	isAllMothertongue := model tasks allSatisfy: [ :each |
		each classification contextTags anySatisfy: [ :eachTag | eachTag code = 'mothertongue' ]].

	self build