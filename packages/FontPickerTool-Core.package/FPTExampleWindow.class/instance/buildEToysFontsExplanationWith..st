toolbuilder
buildEToysFontsExplanationWith: builder
	
	| explainSpec |
	explainSpec := builder pluggableTextSpec new.
	explainSpec
		model: self;
 		getText: #etoysFontsExplanation;
		yourself.

	^explainSpec