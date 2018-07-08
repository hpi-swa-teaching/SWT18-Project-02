as yet unclassified
initialize
	super initialize.
	getSelector := TextStyle defaultFont.
	emphasis := 0.
	self preferences: Preferences.
	self lastFontType: Stack new;
		lastFont: Stack new;
		exampleWindow: Stack new.
	