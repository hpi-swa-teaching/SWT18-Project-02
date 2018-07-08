as yet unclassified
pushToStacks

	self lastFontType push: selectedFontTypeIndex.
	lastFont push: (self getStandardFontFromType: self selectedFontTypeIndex)