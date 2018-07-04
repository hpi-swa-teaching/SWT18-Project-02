as yet unclassified
selectedTextStyle

	^TextStyle named: (self selectedFontFamily ifNil:[Transcript show: 'here'. ^TextStyle default.]).