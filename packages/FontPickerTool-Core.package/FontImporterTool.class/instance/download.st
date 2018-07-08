actions
download

	| font_family_name font_variant_name response  font_names |
	response := (WebClient httpGet: 'https://www.googleapis.com/webfonts/v1/webfonts?key=AIzaSyBng62DSYoqAbhmE-DyTvz-Ge9wUMHas38') content asString.
	font_family_name := resultFontFamilyNames at: selectedSearchIndex.
	font_variant_name := resultFontVariantNames at: selectedSearchIndex.
	font_names := #() asOrderedCollection.

	response regex: '{([^{}])*\"',font_family_name,'\"([^{}])*{([^{}])*}([^{}])' matchesDo: 
		[:aFontFamilyJson | 
		aFontFamilyJson regex: '\"files\"\: {([^{}])*}' matchesDo: 
			[:aFontFamilyFilesJson | 
			aFontFamilyFilesJson regex: '\"',font_variant_name,'\"\: \"(.)*.ttf' matchesDo: 
				[:aMatch |
				FontImporterTool new importFontFamily: (TTCFontReader readTTFFrom: ((WebClient httpGet: (aMatch copyFrom: font_variant_name size+6 to: aMatch size)) content readStream binary))
				].
			]
		].