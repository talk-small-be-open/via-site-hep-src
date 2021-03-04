rendering-visitor
renderContentOn: html

	exerciseId := html nextId.

	"Remarks: Complicated JS passengers calculation, because we need the well-defined order, but jQuery would normally
	return everything sorted in document order."
	jsEventHandler := (html jQuery ajax
		callback: [:values | self ajaxPairSelected: values]
		passengers: '$([$("#', exerciseId, ' div.leftObject.selected").get(0), $("#', exerciseId, ' div.rightObject.selected").get(0)])';
		dataType: 'json';
		onSuccess: (('onMapPairsSelectionResult(ok, "', exerciseId,'")') asFunction: #(ok status));
		onError: (html javascript alert: 'Error with communication to application!')).

	html div
		class: 'mapPairsClickClick';
		class: taskBrick uiStyle;
		id: exerciseId;
		with: [
			html div class: 'head'; with: [
				html div class: ''; with: [ html iconClickDown ].
				html div class: ''; with: [ html iconClickDown ].
				html div.
			].
			
			taskBrick pairInputs do: [:each |
				self renderObjectPair: each on: html]]