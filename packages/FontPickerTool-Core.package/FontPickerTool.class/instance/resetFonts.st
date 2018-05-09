as yet unclassified
resetFonts

	"Preferences restoreDefaultFontsForJapanese"
	
	#(	(setSystemFontTo: Bitmap DejaVu Sans Regular 9)
		(setFixedFontTo: Bitstream Vera Sans Mono Regular 12)
		(setListFontTo: Bitmap DejaVu Sans Regular 9)
		(setFlapsFontTo: Bitmap DejaVu Sans Bold 7)
		(setEToysFontTo: Bitmap DejaVu Sans Regular 7)
		(setEToysTitleFontTo: Bitmap DejaVu Sans Regular 7)
		(setHaloLabelFontTo: Bitmap DejaVu Sans Regular 9)
		(setMenuFontTo: Bitmap DejaVu Sans Regular 9)
		(setWindowTitleFontTo: Bitmap DejaVu Bold 9)
		(setBalloonHelpFontTo: Bitmap DejaVu Regular 7)
		(setCodeFontTo: Bitmap DejaVu Regular 9)
		(setButtonFontTo: Bitmap DejaVu Regular 7)) do:
						
			[:triplet |
				self perform: triplet first with: (StrikeFontSet familyName: triplet second size: triplet third)].

	self setButtonFontTo: (StrikeFont familyName: #ComicBold size: 16).

	Smalltalk at: #BalloonMorph ifPresent:
		[:thatClass | thatClass setBalloonFontTo: (StrikeFontSet familyName: #NewYork size: 12)].

	"Note:  The standardCodeFont is not currently used -- the default font is instead; later hopefully we can split the code font out as  a separate choice, but only after we're able to have the protocols reorganized such that we can know whether it's code or not when we launch the text object.

	Note:  The standard button font is reset by this code but is not otherwise settable by a public UI (too many things can go afoul) "