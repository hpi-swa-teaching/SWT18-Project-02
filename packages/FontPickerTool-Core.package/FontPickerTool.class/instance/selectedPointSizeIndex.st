accessing
selectedPointSizeIndex

	|anIndex|
	anIndex := self pointSizeList indexOf: (pointSize reduce asString padded: #left to: 3 with: $ ) ifAbsent: 1.
	pointSize := (self pointSizeList at: anIndex) withBlanksTrimmed asNumber.
	^anIndex