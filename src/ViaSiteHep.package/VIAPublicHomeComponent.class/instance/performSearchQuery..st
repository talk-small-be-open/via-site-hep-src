as yet unclassified
performSearchQuery: aQuery
	self show: ((VIAPublicModuleSearchResultComponent query: aQuery)
		initSearchFormRenderer: searchFormRenderer;
"		addBackButton;"
		performSearch;
		yourself)