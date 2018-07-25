as yet unclassified
getDefaultFontFromType: aType

	aType = 1 ifTrue: [^StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 0].
	aType = 2 ifTrue: [^StrikeFont familyName: 'BitstreamVeraSansMono' pointSize: 12 emphasized: 0].
	aType = 3 ifTrue: [^StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 0].
	aType = 4 ifTrue: [^StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 7 emphasized: 0].
	aType = 5 ifTrue: [^StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 7 emphasized: 0].
	aType = 6 ifTrue: [^StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 7 emphasized: 0].
	aType = 7 ifTrue: [^StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 0].
	aType = 8 ifTrue: [^StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 0].
	aType = 9 ifTrue: [^StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 1].
	aType = 10 ifTrue:[^StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 7 emphasized: 0].
	aType = 11 ifTrue:[^StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 9 emphasized: 0].
	aType = 12 ifTrue:[^StrikeFont familyName: 'Bitmap DejaVu Sans' pointSize: 7 emphasized: 0]