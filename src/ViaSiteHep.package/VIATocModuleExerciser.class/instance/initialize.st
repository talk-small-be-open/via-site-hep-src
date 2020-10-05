initialization
initialize
	| classification |
	
	super initialize.

	currentExerciser := nil.
	exerciserComponents := nil.
	
	
	self addForm
		removeButtons.

	"OPTIMIZE Maybe obsolete, since we decorate the current Toccamodule in the main component"
	self addContainerDiv addClass: (VIATocHelper toccamoduleCssOfModule: model).
	
"	classification := model overallClassification."
"	subtitleTags := classification contextTags,
		classification grammarTopicTags,
		classification topicTags."
	isAllMothertongue := model tasks allSatisfy: [ :each |
		each classification contextTags anySatisfy: [ :eachTag | eachTag code = 'mothertongue' ]].

	self build