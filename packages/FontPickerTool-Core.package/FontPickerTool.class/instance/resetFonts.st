as yet unclassified
resetFonts

	|defaultFont1 defaultFont2 defaultFont3 defaultFont4 defaultFont5 |
	
	defaultFont1 := StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 0.
	defaultFont2 := StrikeFont familyName: 'Bitstream Vera Sans Mono' pointSize: 12.
	defaultFont3 := StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 7.
	defaultFont4 := StrikeFont familyName: 'Bitmap DejaVu' pointSize: 9.
	defaultFont5 := StrikeFont familyName: 'Bitmap DejaVu' pointSize: 7.
	 
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
		setCodeFontTo: defaultFont4;
		setBalloonHelpFontTo: defaultFont5;
		setButtonFontTo: defaultFont5.
		
	
	
	
		
		
	
	  