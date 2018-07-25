toolbuilder
buildPreviewPanelWith: builder

	| textSpec |
	textSpec := builder pluggableTextSpec new.
	textSpec 
		name: #preview;
		model: self;
		getText: #contents.
	^textSpec