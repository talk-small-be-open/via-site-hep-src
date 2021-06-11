accessing
isFacoltativo
	^ isFacoltativo ifNil: [
		isFacoltativo := self module isFacoltativo ]