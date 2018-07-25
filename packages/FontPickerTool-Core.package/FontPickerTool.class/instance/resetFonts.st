as yet unclassified
resetFonts

	| i |
	self clearStacks.
	i := 12.
	[i>0] whileTrue: [self resetFontFromType: i to: (self getDefaultFontFromType: i). i := i - 1 ].
		
	self changed: #contents
	
	
	
		
	
	
		
		
	
	  