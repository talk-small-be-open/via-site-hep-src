rendering
renderLatestModulesOn: html
	self renderReelModules: (self wd latestPublicModules takeFirst: 8) on: html