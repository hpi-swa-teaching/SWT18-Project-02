as yet unclassified
testClose
	|instance|
	instance := fontPickerTool.
	instance close.
	self assert: instance isNil 