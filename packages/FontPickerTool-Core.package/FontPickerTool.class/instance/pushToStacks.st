as yet unclassified
pushToStacks

	self lastFontType push: selectedFontTypeIndex.
	self lastFont push: (self getStandardFontFromType: self selectedFontTypeIndex)