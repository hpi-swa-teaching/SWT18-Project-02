initialize
initialize

	super initialize.
	searchString := ValueHolder new.
	searchString addDependent: self.
	resultFontFamilyNames := OrderedCollection new.
	resultFontVariantNames := OrderedCollection new.
	webFontResultArray := OrderedCollection new.
	
	emphasis := 0.
