toolbuilder
buildWith: builder

	|windowSpec|
	windowSpec := builder pluggableWindowSpec new.
	
	windowSpec
		model: self;
		label: #windowTitleFontExplanation;
		extent: self initialExtent;
		children: {
			(self buildListFontExplanationWith: builder) frame: (0@0 corner: 0.2@0.25).
			(self buildCodeFontExplanationWith: builder) frame: (0.2@0 corner: 1@0.25).
			(self buildEToyButtonBarWith: builder) frame: (0@0.25 corner: 0.2@0.5).
			(self buildEToysFontsExplanationWith: builder) frame: (0.2@0.25 corner: 1@0.5).
			(self buildButtonBarWith: builder) frame: (0@0.5 corner: 1@0.6).
			(self buildLessUsedFontsExplanationWith: builder) frame: (0@0.6 corner: 1@1)}.	
	
	^builder build: windowSpec.
