as yet unclassified
devLoginAnyone
	| user |
	user := self wd users anyOne.
	self session loginUser: user.
	self answerLoginOk.