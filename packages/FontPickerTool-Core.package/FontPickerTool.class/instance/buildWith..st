as yet unclassified
buildWith: builder

	|windowSpec panelSpec fontListSpec checkBoxSpec styleListSpec sizeListSpec previewPanelSpec|
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'Font Picker Tool';
		extent: 500@500;
		children: OrderedCollection new.
	
	checkBoxSpec := self buildCheckBoxSpecWith: builder.
	windowSpec children add: checkBoxSpec.
	
	fontListSpec := self buildFontListWith: builder.
	windowSpec children add: fontListSpec.
		
	panelSpec := self buildButtonBarWith: builder.			
	windowSpec children add: panelSpec.
	
	
	styleListSpec := self buildStyleListWith: builder.
	styleListSpec
		frame: (0.75@0 corner: 1@0.25).
	windowSpec children add: styleListSpec.
	
	sizeListSpec := self buildPointSizeListWith: builder.
	sizeListSpec
		frame: (0.75@0.25 corner: 1@0.5).
	windowSpec children add: sizeListSpec.
	
	previewPanelSpec := self buildPreviewPanelWith: builder.
	previewPanelSpec
		frame: (0@0.5 corner: 0.75@1).
	windowSpec children add: previewPanelSpec.
	
		
	^ builder build: windowSpec