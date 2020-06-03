actions
gotoSearchModuleQuery: aQuery renderer: aSearchRenderer
	| component |
	component := (VIAModuleSearchComponent query: aQuery)
		initSearchFormRenderer: aSearchRenderer;
		performSearch;
		yourself.

	self coreComponent: component onAnswer: [:module |
		module ifNotNil: [self gotoModule: module ]]