as yet unclassified
testReset

	"fontPickerTool resetFonts."
	self assert: Preferences standardSystemFont equals: (StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 0)
	