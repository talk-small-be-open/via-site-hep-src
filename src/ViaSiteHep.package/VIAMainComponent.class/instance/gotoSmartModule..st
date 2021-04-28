actions
gotoSmartModule: aModule
	| myModuleInWork |
	
	(aModule canView: self currentUser) ifFalse: [ self inform: 'main:accessDenied'. ^ self ].
	
	"Suche ein Module, welches schon im Portfolio ist, auch wenn veraltet"
	myModuleInWork := (self currentPortfolio newestModuleOfFamily: aModule)
		ifNil: [aModule].
		
	myModuleInWork ~= aModule ifTrue: [
		self flashMessage: 'main:otherVersionIsInYourPortfolio't
	].
	
	self openModule: aModule