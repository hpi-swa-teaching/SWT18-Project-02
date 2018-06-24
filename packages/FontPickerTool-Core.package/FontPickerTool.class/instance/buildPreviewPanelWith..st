as yet unclassified
buildPreviewPanelWith: builder
	"Build the preview panel"
	| textSpec |
	textSpec := builder pluggableTextSpec new.
	textSpec 
		name: #preview;
		model: self;
		getText: #contents.
		"softLineWrap: false."
	^textSpec