accessing
isMothertongue
	^ isMothertongue ifNil: [ self module isMothertongue or: [ self task isMothertongue ] ]