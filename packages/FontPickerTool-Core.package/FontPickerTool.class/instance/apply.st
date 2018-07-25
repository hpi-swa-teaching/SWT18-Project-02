as yet unclassified
apply

	self pushToStacks.	
	self setFontTypeWith: selectedFontTypeIndex To: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis).
	
	self changed: #stackNotEmpty;
		changed: #contents
 