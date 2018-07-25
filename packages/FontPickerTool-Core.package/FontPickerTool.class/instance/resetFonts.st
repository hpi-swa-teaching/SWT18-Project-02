as yet unclassified
resetFonts

	| defaultFont1 defaultFont2 defaultFont3 i |
	self clearStacks.
	"
	defaultFont1 := StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 0.
	defaultFont2 := StrikeFont familyName: 'BitstreamVeraSansMono' pointSize: 12 emphasized: 0.
	defaultFont3 := StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 7 emphasized: 0.
	defaultFont4 := StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 1.
	
	Preferences 
		setSystemFontTo: defaultFont1;
		setListFontTo: defaultFont1;
		setHaloLabelFontTo: defaultFont1;
		setMenuFontTo: defaultFont1;
		setFixedFontTo: defaultFont2;
		setFlapsFontTo: defaultFont3;
		setEToysFontTo: defaultFont3;
		setEToysTitleFontTo: defaultFont3;
		setWindowTitleFontTo: defaultFont4;
		setCodeFontTo: defaultFont1;
		setBalloonHelpFontTo: defaultFont3;
		setButtonFontTo: defaultFont3."
	i := 12.
	[i>0] whileTrue: [self resetFontFromType: i to: (self getDefaultFontFromType: i). i := i - 1 ].
		
	self changed: #contents
	
	
	
		
	
	
		
		
	
	  