as yet unclassified
selectedTextStyle

	^TextStyle named: (self selectedFontFamily ifNil:[^TextStyle default])