as yet unclassified
selectedTextStyle
	Transcript show: '1 '.

	^TextStyle named: (self selectedFontFamily ifNil:[Transcript show: 'here'. ^TextStyle default.]).