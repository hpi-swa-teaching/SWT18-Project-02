toolbuilder
buildFontTypesListWith: builder

	| checkBoxSpec |
	checkBoxSpec := builder pluggableMultiSelectionListSpec new.
	checkBoxSpec
		model: self;
		name: #fontTypesList;
		list: #fontTypesList;
		getIndex: #selectedFontTypeIndex;
		setIndex: #selectedFontTypeIndex:.
	^checkBoxSpec