as yet unclassified
buildCheckBoxSpecWith: builder

	|checkBoxSpec|
	checkBoxSpec := builder pluggableMultiSelectionListSpec new.
	checkBoxSpec
		model: self;
		frame: (0@0 corner: 0.25@0.5);
		name: #fontTypesList;
		list: #fontTypesList;
		getIndex: #selectedFontTypeIndex;
		setIndex: #selectedFontTypeIndex:.
		
		
	^checkBoxSpec