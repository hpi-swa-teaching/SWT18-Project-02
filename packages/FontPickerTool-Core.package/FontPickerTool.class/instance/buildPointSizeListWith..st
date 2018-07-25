toolbuilder
buildPointSizeListWith: builder

	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec 
		model: self;
		list: #pointSizeList; 
		getIndex: #selectedPointSizeIndex; 
		setIndex: #selectedPointSizeIndex:.
	^listSpec
