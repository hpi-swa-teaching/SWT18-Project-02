toolbuilder
buildListFontExplanationWith: builder
	
	| listSpec |
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		name: #listFontExplanation;
		list: #listFontExplanation.

	^listSpec