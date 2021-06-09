actions
openModule: aModule taskNumber: aTaskNumber remember: aBoolean backToMe: aBackBoolean
	| exerciser myModuleInWork |

	(aModule canView: self currentUser) ifFalse: [ self inform: 'main:accessDenied'. ^ self ].

	"Suche ein Module, welches schon im Portfolio ist, auch wenn veraltet"
	myModuleInWork := (self currentPortfolio newestModuleOfFamily: aModule)
		ifNil: [aModule].
		
	myModuleInWork ~= aModule ifTrue: [
		self flashMessage: 'main:otherVersionIsInYourPortfolio't
	].

	aBoolean ifTrue: [
		
		(VIATocHelper isRegularModule: aModule)
			ifTrue: [
				self currentPortfolio
					addModule: aModule;
					lastOpenedModule: aModule.
			]
			ifFalse: [
				(VIATocHelper isVocabolarioModule: aModule) ifTrue: [ 
					self currentPortfolio lastOpenedVocabolario: aModule.
				].
				(VIATocHelper isPallonciniModule: aModule) ifTrue: [ 
					self currentPortfolio lastOpenedPalloncini: aModule.
				].
	]].

	self session currentModule: aModule. 

	exerciser := (VIATocModuleExerciser fromModule: aModule).
	exerciser previousModule: aModule previousByIndexCode.
	exerciser nextModule: aModule nextByIndexCode.

	aTaskNumber ifNotNil: [
		exerciser gotoTaskNumber: aTaskNumber].

	"Back handling"
"	self coreComponent ifNotNil: [ :c |
		exerciser previousComponent: (aBackBoolean ifTrue: [c] ifFalse: [c previousComponent]) ]."
	aBackBoolean ifTrue: [
		exerciser previousComponent: self coreComponent ].

	self coreComponent: exerciser