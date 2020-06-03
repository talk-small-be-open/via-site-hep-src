actions
openNewestVersion
	(self confirmYesNo: 'moduleExerciser:reallyOpenNewestVersionQM') ifTrue: [
		self app openModule: model moduleHistory newestReleasedVersion]