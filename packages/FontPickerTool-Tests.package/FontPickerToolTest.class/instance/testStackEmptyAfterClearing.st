as yet unclassified
testStackEmptyAfterClearing
	
	fontPickerTool clearStacks.
	self assert: fontPickerTool lastFontType isEmpty.
	self assert: fontPickerTool lastFont isEmpty