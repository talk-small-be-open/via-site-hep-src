actions
gotoModule: aModule taskNumber: anInteger
	| myModuleInWork |
	
	"Suche ein Module, welches schon im Portfolio ist, auch wenn veraltet"
"	myModuleInWork := (self currentPortfolio newestModuleOfFamily: aModule)
		ifNil: [aModule].
		
	myModuleInWork ~= aModule ifTrue: [
		self flashMessage: 'main:otherVersionIsInYourPortfolio't
	]."
	
	"If we get into here with a specific task number, we want to get back, usually"
	self openModule: aModule taskNumber: anInteger remember: true backToMe: true