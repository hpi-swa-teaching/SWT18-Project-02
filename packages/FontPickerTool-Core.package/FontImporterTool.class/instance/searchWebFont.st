as yet unclassified
searchWebFont

	| result search_string font_names |
	response := (WebClient httpGet: 'https://www.googleapis.com/webfonts/v1/webfonts?key=AIzaSyBng62DSYoqAbhmE-DyTvz-Ge9wUMHas38') content asString.
	searchString changed: #acceptChanges.
	search_string := searchString contents.
	result := #() asOrderedCollection.
	font_names := #() asOrderedCollection.
	response regex: '{([^{}])*{([^{}])*}([^{}])' matchesDo: 
		[:aFontFamilyJson | 
		aFontFamilyJson regex: '\"family\"\: \"',search_string,'(.)*\"' matchesDo: 
			[:aFontFamilyName |
			aFontFamilyJson regex: '\"variants\"\: \[([^]])*\]' matchesDo: 
				[:aFontVariantJson |
				(aFontVariantJson allRegexMatches: '\"(.)*\"') do:  
					[:aFontVariantName |
						result add: (aFontFamilyName copyFrom: 12 to: aFontFamilyName size-1), ' ', 						(aFontVariantName copyFrom: 2 to: aFontVariantName size-1) 
					] without: (aFontVariantJson allRegexMatches: '\"(.)*\"') first.
				]
			]
		].
	self webFontResultArray: result.
	self changed: #hasResults.
	self webFontResultText: (result inject: '' into: [:totalString :value | totalString , value , String cr]).
	self changed: #webFontResultText.
	self changed: #webFontResultArray.