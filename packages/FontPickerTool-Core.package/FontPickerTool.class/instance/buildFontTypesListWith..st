toolbuilder
buildFontTypesListWith: builder

	| checkBoxSpec |
	checkBoxSpec := builder pluggableMultiSelectionListSpec new.
	checkBoxSpec
		model: self;
		frame: (0@0 corner: 0.25@0.4);
		name: #fontTypesList;
		list: #fontTypesList;
		getIndex: #selectedFontTypeIndex;
		setIndex: #selectedFontTypeIndex:.
	^checkBoxSpec