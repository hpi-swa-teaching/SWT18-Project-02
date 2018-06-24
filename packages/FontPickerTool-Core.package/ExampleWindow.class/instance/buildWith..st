as yet unclassified
buildWith: builder

	|windowSpec buttonSpec codeSpec listSpec explainSpec|
	
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'This is the WINDOW TITLE FONT';
		extent: 520@500;
		children: OrderedCollection new.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		frame: (0@0.5 corner: 0.5@0.6);
		label: 'This is the BUTTON FONT' translated;
		help: 'This is the BALLOON HELP FONT' translated;
		yourself.
	windowSpec children add: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		frame: (0.5@0.5 corner: 1@0.6);
		label: #ballonHelpFontExplanation;
		help: 'This is the BALLOON HELP FONT' translated;
		yourself.
	windowSpec children add: buttonSpec.
	
	explainSpec := builder pluggableTextSpec new.
	explainSpec
		model: self;
		frame: (0@0.6 corner: 1@1);
 		getText: #lessUsedFontsExplanation;
		yourself.
	windowSpec children add: explainSpec.
	
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		frame: (0@0 corner: 0.2@0.5);
		name: #listFontExplanation;
		list: #listFontExplanation.
	windowSpec children add: listSpec.
	
	codeSpec := builder pluggableCodePaneSpec new.
	codeSpec
		model: self;
		frame: (0.2@0 corner: 1@0.5);
		getText: #codeFontExplanation;
		yourself.
	windowSpec children add: codeSpec.
	
	
		
	^builder build: windowSpec.