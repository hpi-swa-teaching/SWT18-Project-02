as yet unclassified
testStackNotEmpty
	
	fontPickerTool pushToStacks.
	self assert: fontPickerTool lastFontType isEmpty not.
	self assert: fontPickerTool lastFont isEmpty not.
	self assert: fontPickerTool stackNotEmpty 