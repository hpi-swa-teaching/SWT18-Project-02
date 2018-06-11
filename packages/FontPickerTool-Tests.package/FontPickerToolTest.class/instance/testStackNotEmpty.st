as yet unclassified
testStackNotEmpty
	
	fontPickerTool 
		selectedFontTypeIndex: 2;
		selectedFontIndex: 2;
		apply.
	self assert: fontPickerTool lastFontType isEmpty not.
	self assert: fontPickerTool lastFont isEmpty not.
	