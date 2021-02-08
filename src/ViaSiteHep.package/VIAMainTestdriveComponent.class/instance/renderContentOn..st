rendering
renderContentOn: html
"	html script: 'setTimeout(function() {location.reload()}, 6000);'."	
	html div class: 'testDriveContainer'; with: [
		html heading
			class: 'title';
			with: [
				html text: 'TESTDRIVE'.
				html anchor
					style: 'position: absolute;right: 10px;font-size: 50%;';
					callback: [ "simple reload" ];
					with: 'Reload'.
			].
		html render: self coreComponent]