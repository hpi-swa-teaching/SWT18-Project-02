actions
searchWebFont

	| result search_string font_names |
	self response: (WebClient httpGet: 'https://www.googleapis.com/webfonts/v1/webfonts?key=AIzaSyBng62DSYoqAbhmE-DyTvz-Ge9wUMHas38') content asString.
	self searchString changed: #acceptChanges.
	search_string := self searchString contents.
	result := #() asOrderedCollection.
	font_names := #() asOrderedCollection.
	self response regex: '{([^{}])*{([^{}])*}([^{}])' matchesDo: 
		[:aFontFamilyJson | 
		aFontFamilyJson regex: '\"family\"\: \"',search_string,'(.)*\"' matchesDo: 
			[:aFontFamilyName |
			aFontFamilyJson regex: '\"variants\"\: \[([^]])*\]' matchesDo: 
				[:aFontVariantJson |
				(aFontVariantJson allRegexMatches: '\"(.)*\"') do:  
					[:aFontVariantName |
						self resultFontFamilyNames add: (aFontFamilyName copyFrom: 12 to: aFontFamilyName size-1). 
						self resultFontVariantNames add: (aFontVariantName copyFrom: 2 to: aFontVariantName size-1). 
						result add: (self resultFontFamilyNames last, ' ', self resultFontVariantNames last)
					] without: (aFontVariantJson allRegexMatches: '\"(.)*\"') first.
				]
			]
		].
	self webFontResultArray: result.
	self changed: #hasResults.
	self changed: #webFontResultArray.