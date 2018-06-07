accessing
selectedFontTypeIndex: anIndex

	|selectedFont|
	anIndex = 0 ifTrue: [^self].
	selectedFontTypeIndex := anIndex.
	selectedFont := self getStandardFontFromType: anIndex.
	
	selectedFontIndex := (self fontList indexOf: selectedFont familyName).
	emphasis := selectedFont emphasis.
	
	Transcript show: selectedFontTypeIndex.
	self changed: #selectedFontTypeIndex.
	self changed: #selectedFontIndex.
	self changed: #selectedFontStyleIndex.
	self changed: #pointSizeList.
	
	pointSize :=  selectedFont pointSize.
	
	self changed: #selectedPointSizeIndex.
	self changed: #contents.