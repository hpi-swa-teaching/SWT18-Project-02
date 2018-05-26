as yet unclassified
apply

	selectedFontTypeIndex = 1 ifTrue: [Preferences setSystemFontTo: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis)].
	selectedFontTypeIndex = 2 ifTrue: [Preferences setFixedFontTo: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis)].
	selectedFontTypeIndex = 3 ifTrue: [Preferences setListFontTo: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis)].
	selectedFontTypeIndex = 4 ifTrue: [Preferences setFlapsFontTo: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis)].
	selectedFontTypeIndex = 5 ifTrue: [Preferences setEToysFontTo: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis)].
	selectedFontTypeIndex = 6 ifTrue: [Preferences setEToysTitleFontTo: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis)].
	selectedFontTypeIndex = 7 ifTrue: [Preferences setHaloLabelFontTo: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis)].
	selectedFontTypeIndex = 8 ifTrue: [Preferences setMenuFontTo: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis)].
	selectedFontTypeIndex = 9 ifTrue: [Preferences setWindowTitleFontTo: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis)].
	selectedFontTypeIndex = 10 ifTrue: [Preferences setBalloonHelpFontTo: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis)].
	selectedFontTypeIndex = 11 ifTrue: [Preferences setCodeFontTo: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis)].
	selectedFontTypeIndex = 12 ifTrue: [Preferences setButtonFontTo: (StrikeFont familyName: (fontList at: selectedFontIndex) pointSize: pointSize emphasized: emphasis)].