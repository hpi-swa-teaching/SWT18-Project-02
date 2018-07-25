as yet unclassified
testFontIndexChangesWithFontTypeIndex

	|index1 index2|
	index1 := fontPickerTool selectedFontIndex.
	fontPickerTool selectedFontTypeIndex: 2.
	index2 := fontPickerTool selectedFontIndex.

	self assert: (index1 ~= index2)