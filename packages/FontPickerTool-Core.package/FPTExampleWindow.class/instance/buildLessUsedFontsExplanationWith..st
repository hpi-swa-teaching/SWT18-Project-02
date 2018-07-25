toolbuilder
buildLessUsedFontsExplanationWith: builder
	
	| explainSpec |
	explainSpec := builder pluggableTextSpec new.
	explainSpec
		model: self;
 		getText: #lessUsedFontsExplanation;
		yourself.

	^explainSpec