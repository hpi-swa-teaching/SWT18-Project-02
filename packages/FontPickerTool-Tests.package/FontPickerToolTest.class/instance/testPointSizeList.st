as yet unclassified
testPointSizeList

	self assert: fontPickerTool pointSizeList size equals: fontPickerTool selectedTextStyle pointSizes size.
	fontPickerTool selectedFontIndex: 2.
	self assert: fontPickerTool pointSizeList size equals: fontPickerTool selectedTextStyle pointSizes size
	