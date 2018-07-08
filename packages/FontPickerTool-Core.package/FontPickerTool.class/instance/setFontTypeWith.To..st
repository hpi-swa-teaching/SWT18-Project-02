as yet unclassified
setFontTypeWith: anIndex To: aFont

	anIndex = 1 ifTrue: [Preferences setSystemFontTo: aFont].
	anIndex = 2 ifTrue: [Preferences setFixedFontTo: aFont].
	anIndex = 3 ifTrue: [Preferences setListFontTo: aFont].
	anIndex = 4 ifTrue: [Preferences setFlapsFontTo: aFont].
	anIndex = 5 ifTrue: [Preferences setEToysFontTo: aFont].
	anIndex = 6 ifTrue: [Preferences setEToysTitleFontTo: aFont].
	anIndex = 7 ifTrue: [Preferences setHaloLabelFontTo: aFont].
	anIndex = 8 ifTrue: [Preferences setMenuFontTo: aFont].
	anIndex = 9 ifTrue: [Preferences setWindowTitleFontTo: aFont].
	anIndex = 10 ifTrue: [Preferences setBalloonHelpFontTo: aFont].
	anIndex = 11 ifTrue: [Preferences setCodeFontTo: aFont].
	anIndex = 12 ifTrue: [Preferences setButtonFontTo: aFont].