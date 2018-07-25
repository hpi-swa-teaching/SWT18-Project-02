as yet unclassified
testFontListComplete

	self assert: fontPickerTool fontList equals: TextStyle knownTextStyles.
	self assert: (fontPickerTool fontList isEmpty not)  