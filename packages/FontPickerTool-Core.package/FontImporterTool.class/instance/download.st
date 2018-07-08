actions
download

	| font_family_name font_variant_name |
	font_family_name := self resultFontFamilyNames at: self selectedSearchIndex.
	font_variant_name := self resultFontVariantNames at: self selectedSearchIndex.
	
	self response regex: '{([^{}])*\"',font_family_name,'\"([^{}])*{([^{}])*}([^{}])' matchesDo: 
		[:aFontFamilyJson | 
		aFontFamilyJson regex: '\"files\"\: {([^{}])*}' matchesDo: 
			[:aFontFamilyFilesJson | 
			aFontFamilyFilesJson regex: '\"',font_variant_name,'\"\: \"(.)*.ttf' matchesDo: 
				[:aMatch |
				self importFontFamily: (TTCFontReader readTTFFrom: ((WebClient httpGet: (aMatch copyFrom: font_variant_name size+6 to: aMatch size)) content readStream binary))
				].
			]
		].