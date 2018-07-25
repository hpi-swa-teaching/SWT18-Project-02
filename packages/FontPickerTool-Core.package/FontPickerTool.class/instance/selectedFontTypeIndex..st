accessing
selectedFontTypeIndex: anIndex

	| selectedFont |
	anIndex = 0 ifTrue: [^self].
	selectedFontTypeIndex := anIndex.
	selectedFont := self getStandardFontFromType: anIndex.
	
	self selectedFontIndex: (self fontList indexOf: selectedFont familyName);
		emphasis: selectedFont emphasis;
		changed: #selectedFontTypeIndex;
		changed: #selectedFontIndex;
		changed: #selectedFontStyleIndex;
		changed: #pointSizeList;
		pointSize: selectedFont pointSize;
		changed: #selectedPointSizeIndex;
		changed: #contents