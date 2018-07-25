accessing
selectedFontTypeIndex

	selectedFontTypeIndex ifNotNil: [^selectedFontTypeIndex].
	selectedFontTypeIndex := 1.
	^selectedFontTypeIndex