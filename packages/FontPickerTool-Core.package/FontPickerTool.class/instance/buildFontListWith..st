toolbuilder
buildFontListWith: builder

	| fontListSpec |
	fontListSpec := builder pluggableListSpec new.
	fontListSpec
		model: self;
		frame: (0.25@0 corner: 0.75@0.5);
		name: #fontList;
		list: #fontList;
		getIndex: #selectedFontIndex; 
		setIndex: #selectedFontIndex:.
	^fontListSpec