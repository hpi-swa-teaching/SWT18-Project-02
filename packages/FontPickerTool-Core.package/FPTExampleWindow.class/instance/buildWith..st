toolbuilder
buildWith: builder

	|windowSpec|
	
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 0.2@0.25) -> [self buildListFontExplanationWith: builder].
		(0.2@0 corner: 1@0.25) -> [self buildCodeFontExplanationWith: builder].
		(0@0.25 corner: 0.2@0.5) -> [self buildEToyButtonBarWith: builder].
		(0.2@0.25 corner: 1@0.5) -> [self buildEToysFontsExplanationWith: builder].
		(0@0.5 corner: 1@0.6) -> [self buildButtonBarWith: builder].
		(0@0.6 corner: 1@1) -> [self buildLessUsedFontsExplanationWith: builder]}.
	windowSpec
		label: #windowTitleFontExplanation;
		extent: self initialExtent.
	
	^builder build: windowSpec.
