toolbuilder
buildWith: builder

	|windowSpec|
	
	windowSpec := self buildWindowWith: builder specs: {
		(0@0 corner: 0.25@0.4) -> [self buildFontTypesListWith: builder].
		(0@0.4 corner: 0.25@0.5) -> [self buildExampleButtonBarWith: builder].
		(0.25@0 corner: 0.75@0.5) -> [self buildFontListWith: builder].
		(0.75@0.5 corner: 1@1) -> [self buildButtonBarWith: builder].
		(0.75@0 corner: 1@0.25) -> [self buildStyleListWith: builder].
		(0.75@0.25 corner: 1@0.5) -> [self buildPointSizeListWith: builder].
		(0@0.5 corner: 0.75@1) -> [self buildPreviewPanelWith: builder]}.
	windowSpec
		label: 'Font Picker Tool';
		extent: self initialExtent.
			
	^ builder build: windowSpec