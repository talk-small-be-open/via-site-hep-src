uikit
svgIcon: aString with: anSvgString
	self span class: 'svg-icon'; with: [
		self svgCss: ('svg-icon ', aString) style: '' viewBox: '0 0 30 30' with: anSvgString]