toolbuilder
buildCodeFontExplanationWith: builder
	
	| codeSpec |
	codeSpec := builder pluggableCodePaneSpec new.
	codeSpec
		model: self;
		getText: #codeFontExplanation;
		yourself.

	^codeSpec