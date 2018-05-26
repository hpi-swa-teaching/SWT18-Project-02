as yet unclassified
buildWith: builder

	|windowSpec panelSpec buttonSpec fontListSpec checkBoxSpec styleListSpec sizeListSpec|
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
	
	"buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		frame: (0.5@0.75 corner: 1@1);
		label: 'RESET BUTTON' translated;
		help: 'Use the standard system font defaults' translated;
		action: #resetFonts;
		yourself.
	windowSpec children addLast: buttonSpec."
	
	styleListSpec := self buildStyleListWith: builder.
	styleListSpec
		frame: (0.75@0 corner: 1@0.25).
	windowSpec children add: styleListSpec.
	
	sizeListSpec := self buildPointSizeListWith: builder.
	sizeListSpec
		frame: (0.75@0.25 corner: 1@0.5).
	windowSpec children add: sizeListSpec.
		
	^ builder build: windowSpec