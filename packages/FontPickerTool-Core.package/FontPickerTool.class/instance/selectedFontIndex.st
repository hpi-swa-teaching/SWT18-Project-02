accessing
selectedFontIndex

	| font textStyleName family |
	selectedFontIndex ifNotNil: [^selectedFontIndex].
	selectedFontIndex := 0.
	font := (self getSelector isSymbol and:[self target notNil])
		ifTrue:[self target perform: self getSelector]
		ifFalse:[self getSelector].
	font ifNotNil:[
		self emphasis: font emphasis;
			pointSize: font pointSize.
		textStyleName := font textStyleName.
		family := self fontList detect:[:f | f = textStyleName] ifNone:[]].
	self selectedFontIndex: (self fontList indexOf: family).
	^selectedFontIndex