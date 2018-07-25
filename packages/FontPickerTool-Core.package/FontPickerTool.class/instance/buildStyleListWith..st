toolbuilder
buildStyleListWith: builder

	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec 
		model: self;
		list: #fontStyleList; 
		getIndex: #selectedFontStyleIndex; 
		setIndex: #selectedFontStyleIndex:.
	^listSpec
