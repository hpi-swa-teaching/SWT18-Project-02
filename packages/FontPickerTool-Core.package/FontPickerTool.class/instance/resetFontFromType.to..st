as yet unclassified
resetFontFromType: aTypeIndex to: aFont

	aFont = (self getStandardFontFromType: aTypeIndex)
		ifFalse: [self setFontTypeWith: aTypeIndex To: aFont]