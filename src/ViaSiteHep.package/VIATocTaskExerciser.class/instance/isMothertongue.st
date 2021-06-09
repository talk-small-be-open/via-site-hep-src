accessing
isMothertongue
	^ isMothertongue ifNil: [
		isMothertongue := self module isMothertongue or: [ self task isMothertongue ] ]