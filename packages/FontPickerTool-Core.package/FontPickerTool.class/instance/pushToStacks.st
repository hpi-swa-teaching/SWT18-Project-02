as yet unclassified
pushToStacks

	self lastFontType push: self selectedFontTypeIndex.
	self lastFont push: (self getStandardFontFromType: self selectedFontTypeIndex)