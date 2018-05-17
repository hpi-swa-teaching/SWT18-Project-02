as yet unclassified
buildFontListWith: builder

	|fontListSpec|
	fontListSpec := builder pluggableListSpec new.
	fontListSpec
		model: self;
		frame: (0@0.1 corner: 0.5@0.5);
		name: #fontList;
		list: #fontList.
		"getIndex: #selectedFontIndex; 
		setIndex: #selectedFontIndex:"
		
	^fontListSpec