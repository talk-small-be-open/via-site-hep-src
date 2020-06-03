actions
gotoSearchModule
	self coreComponent: VIAModuleSearchComponent newQuery onAnswer: [:module |
		module ifNotNil: [self gotoModule: module ]]