as yet unclassified
getStandardFontFromType: aType

	aType = 1 ifTrue: [^Preferences standardSystemFont].
	aType = 2 ifTrue: [^Preferences standardFixedFont].
	aType = 3 ifTrue: [^Preferences standardListFont].
	aType = 4 ifTrue: [^Preferences standardFlapFont].
	aType = 5 ifTrue: [^Preferences standardEToysFont].
	aType = 6 ifTrue: [^Preferences standardEToysTitleFont].
	aType = 7 ifTrue: [^Preferences standardHaloLabelFont].
	aType = 8 ifTrue: [^Preferences standardMenuFont].
	aType = 9 ifTrue: [^Preferences standardWindowTitleFont].
	aType = 10 ifTrue: [^Preferences standardBalloonHelpFont].
	aType = 11 ifTrue: [^Preferences standardCodeFont].
	aType = 12 ifTrue: [^Preferences standardButtonFont].