accessing
selectedPointSizeIndex: anIndex

	anIndex = 0 ifTrue: [^self].
	self pointSize: (self pointSizeList at: anIndex) withBlanksTrimmed asNumber;
		changed: #selectedPointSizeIndex;
		changed: #pointSizeList;
		changed: #contents