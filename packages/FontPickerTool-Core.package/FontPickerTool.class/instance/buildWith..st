as yet unclassified
buildWith: builder

	|windowSpec panelSpec buttonSpec fontListSpec|
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'Font Picker Tool';
		extent: 500@500;
		children: OrderedCollection new.
	
	fontListSpec := builder pluggableListSpec new.
	fontListSpec
		model: self;
		frame: (0@0 corner: 0.5@0.5);
		name: #fontList;
		list: #fontList.
		"getIndex: #selectedFontIndex; 
		setIndex: #selectedFontIndex:"
	windowSpec children add: fontListSpec.
		
	panelSpec := self buildButtonBarWith: builder.			
	windowSpec children add: panelSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		frame: (0.5@0 corner: 1@1);
		label: 'RESET BUTTON' translated;
		help: 'Use the standard system font defaults' translated;
		action: #resetFonts;
		yourself.
	windowSpec children addLast: buttonSpec.
		
	^ builder build: windowSpec