as yet unclassified
apply

	self lastFontType push: selectedFontTypeIndex.
	lastFont push: (self getStandardFontFromType: self selectedFontTypeIndex).
	
	self setFontTypeWith: selectedFontTypeIndex To: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis).
	
	self changed: #stackNotEmpty;
		changed: #contents
 