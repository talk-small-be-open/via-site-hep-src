actions
gotoSearchModule
	"Start MIT Finder"
	self coreComponent: VIAToccaStartComponent new

"	self showModuleFinder"
"	self coreComponent: VIAModuleSearchComponent newQuery onAnswer: [:module |
		module ifNotNil: [self gotoModule: module ]]"