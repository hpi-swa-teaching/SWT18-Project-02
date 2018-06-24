as yet unclassified
resetFonts

	|defaultFont1 defaultFont2 defaultFont3 defaultFont4 defaultFont5 defaultFont6|
	
	[lastFont isEmpty]
		whileFalse: [lastFont pop.
					lastFontType pop].
	self changed: #stackNotEmpty.
	
	defaultFont1 := StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 0.
	defaultFont2 := StrikeFont familyName: 'BitstreamVeraSansMono' pointSize: 12 emphasized: 0.
	defaultFont3 := StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 7 emphasized: 0.
	defaultFont4 := StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 0.
	defaultFont5 := StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 7 emphasized: 0.
	defaultFont6 := StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 1.
	 
	Preferences 
		setSystemFontTo: defaultFont1;
		setListFontTo: defaultFont1;
		setHaloLabelFontTo: defaultFont1;
		setMenuFontTo: defaultFont1;
		setFixedFontTo: defaultFont2;
		setFlapsFontTo: defaultFont3;
		setEToysFontTo: defaultFont3;
		setEToysTitleFontTo: defaultFont3;
		setWindowTitleFontTo: defaultFont6;
		setCodeFontTo: defaultFont4;
		setBalloonHelpFontTo: defaultFont5;
		setButtonFontTo: defaultFont5.
		
	self changed: #contents
	
	
	
		
	
	
		
		
	
	  