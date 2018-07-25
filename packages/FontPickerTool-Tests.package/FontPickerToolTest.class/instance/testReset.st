as yet unclassified
testReset

	fontPickerTool resetFontFromType: 1 to:  (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 0).
	self assert: Preferences standardSystemFont equals: (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 0)
	