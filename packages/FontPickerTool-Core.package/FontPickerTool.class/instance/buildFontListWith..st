toolbuilder
buildFontListWith: builder

	| fontListSpec |
	fontListSpec := builder pluggableListSpec new.
	fontListSpec
		model: self;
		name: #fontList;
		list: #fontList;
		getIndex: #selectedFontIndex; 
		setIndex: #selectedFontIndex:.
	^fontListSpec