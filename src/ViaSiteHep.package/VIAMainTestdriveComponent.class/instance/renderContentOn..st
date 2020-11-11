rendering
renderContentOn: html
"	html script: 'setTimeout(function() {location.reload()}, 6000);'."	
	html div class: 'testDriveContainer'; with: [
		html heading class: 'title'; with: 'TESTDRIVE'.
		html render: self coreComponent]