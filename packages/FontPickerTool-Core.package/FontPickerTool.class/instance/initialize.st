as yet unclassified
initialize
	super initialize.
	getSelector := TextStyle defaultFont.
	self emphasis: 0.
	self lastFontType: Stack new;
		lastFont: Stack new;
		exampleWindows: Set new
	