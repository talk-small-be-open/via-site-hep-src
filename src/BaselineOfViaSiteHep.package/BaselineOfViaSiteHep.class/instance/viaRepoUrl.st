baselines
viaRepoUrl
	| branch |
	
	"Automatic branch switch, if on the testing branch, for deployment to testing server"
	
	branch := self packageRepository repositoryBranchName = 'testing' ifTrue: [ 'hep-testing' ] ifFalse: [ 'hep-master' ].
	
	^ 'github://talk-small-be-open/via-base-src:', branch, '/src'