as yet unclassified
apply

	self pushToStacks;
		setFontTypeWith: selectedFontTypeIndex To: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis);
		changed: #stackNotEmpty;
		changed: #contents
 