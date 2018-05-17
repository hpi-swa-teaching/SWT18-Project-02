as yet unclassified
buildCheckBoxSpecWith: builder

	|checkBoxSpec|
	checkBoxSpec := builder pluggableMultiSelectionListSpec new.
	checkBoxSpec
		model: self;
		frame: (0@0 corner: 0.5@0.1);
		name: #fontTypesList;
		list: #fontTypesList.
		
		
	^checkBoxSpec