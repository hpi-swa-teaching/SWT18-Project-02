as yet unclassified
apply

	self lastFontType: selectedFontTypeIndex.
	lastFont:= self getStandardFontFromType: self selectedFontTypeIndex.
	
	self setFontTypeWith: selectedFontTypeIndex To: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis).
