uikit
svgIcon: aString dimension: anInteger with: anSvgString
	| i |
	i := anInteger asString.
	self span class: ('svg-icon icon ', aString); with: [
		self svgCss: ('svg-icon ', aString) style: '' viewBox: ('0 0 ', i, ' ', i) with: anSvgString]