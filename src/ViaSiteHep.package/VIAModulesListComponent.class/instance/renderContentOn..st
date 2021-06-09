rendering
renderContentOn: html
	html ukContainer with: [
		titleKey ifNotBlank: [
			html heading level1; with: [
				html t: titleKey]].
		
		html ukList class: 'modulesList'; with: [
			modules do: [ :each |
				html listItem: [
					html div class: 'moduleEntry'; with: [
						html anchor
							class: 'gotoModule';
							callback: [ self clickModule: each];
							with: [
								html span class: 'indexCode'; with: each indexCodeString.
								html span class: 'moduleTitle'; with: each title] ] ] ] ] ]