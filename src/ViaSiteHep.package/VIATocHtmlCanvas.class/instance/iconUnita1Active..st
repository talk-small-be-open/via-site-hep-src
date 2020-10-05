icons
iconUnita1Active: aBoolean
	aBoolean ifTrue: [
		self svgIcon: 'unita1' with: '<path d="M20.1,8V4.3L8.2,8H7v17h16V8H20.1z M16,21h-2v-7.2h-1.7l0.2-1.8H16V21z M19.1,8h-7.5l7.5-2.3V8z"/>
'	] ifFalse: [
		self svgIcon: 'unita1' with: '<g>
		<path d="M20.1,8V4.3L8.2,8H7v17h16V8H20.1z M19.1,5.7V8h-7.5L19.1,5.7z M22,24H8V9l0.3,0H22V24z"/>
		<polygon points="14,21 16,21 16,12 12.5,12 12.2,13.8 14,13.8 	"/>
	</g>']