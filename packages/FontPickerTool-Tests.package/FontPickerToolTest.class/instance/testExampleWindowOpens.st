as yet unclassified
testExampleWindowOpens

	fontPickerTool openExample.
	self assert: fontPickerTool exampleWindows isEmpty not.
	
	fontPickerTool closeExampleWindows.
	self assert: fontPickerTool exampleWindows isEmpty
