toolbuilder
buildWith: builder

	|windowSpec|
	windowSpec := builder pluggableWindowSpec new.
	
	windowSpec
		model: self;
		label: 'Font Picker Tool';
		extent: self initialExtent;
		children: {
			(self buildFontTypesListWith: builder) frame: (0@0 corner: 0.25@0.4).
			(self buildExampleButtonBarWith: builder) frame: (0@0.4 corner: 0.25@0.5).
			(self buildFontListWith: builder) frame: (0.25@0 corner: 0.75@0.5).
			(self buildButtonBarWith: builder) frame: (0.75@0.5 corner: 1@1).
			(self buildStyleListWith: builder) frame: (0.75@0 corner: 1@0.25).
			(self buildPointSizeListWith: builder) frame: (0.75@0.25 corner: 1@0.5).
			(self buildPreviewPanelWith: builder) frame: (0@0.5 corner: 0.75@1)}.
	^builder build: windowSpec