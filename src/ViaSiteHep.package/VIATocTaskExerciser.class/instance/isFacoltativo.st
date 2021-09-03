accessing
isFacoltativo
	^ isFacoltativo ifNil: [
		isFacoltativo := self module isFacoltativo or: [ self task isFacoltativo ] ]