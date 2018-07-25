as yet unclassified
initialize

	super initialize.
	self getSelector: TextStyle defaultFont;
		emphasis: 0;
		lastFontType: Stack new;
		lastFont: Stack new;
		exampleWindows: Set new
	