as yet unclassified
beforeFirstCall

	super beforeFirstCall.

	"core component could have been set by some early incoming commands"
	self coreComponent ifNil: [
		self gotoFirstScreen ]