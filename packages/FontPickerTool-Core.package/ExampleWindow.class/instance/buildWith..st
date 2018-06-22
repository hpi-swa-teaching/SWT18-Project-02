as yet unclassified
buildWith: builder

	|windowSpec buttonSpec codeSpec listSpec explainSpec|
	
	windowSpec := builder pluggableWindowSpec new.
	windowSpec
		model: self;
		label: 'This is the WINDOW TITLE FONT';
		extent: 500@500;
		children: OrderedCollection new.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		frame: (0@0.5 corner: 0.5@0.75);
		label: 'This is the BUTTON FONT' translated;
		help: 'This is the BALLOON HELP FONT' translated;
		yourself.
	windowSpec children add: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		frame: (0.5@0.5 corner: 1@0.75);
		label: 'Hover this field to see the', String cr, 'BALLOON HELP FONT' translated;
		help: 'This is the BALLOON HELP FONT' translated;
		yourself.
	windowSpec children add: buttonSpec.
	
	explainSpec := builder pluggableCodePaneSpec new.
	explainSpec
		model: self;
		frame: (0@0.75 corner: 1@1);
 		help: 'default fixe font flaps font halo label font menu font' translated;
		yourself.
	windowSpec children add: explainSpec.
	
	listSpec := builder pluggableListSpec new.
	listSpec
		model: self;
		frame: (0@0 corner: 0.2@0.5);
		name: #listFontWords;
		list: #listFontWords.
	windowSpec children add: listSpec.
	
	codeSpec := builder pluggableCodePaneSpec new.
	codeSpec
		model: self;
		frame: (0.2@0 corner: 1@0.5);
		help: 'This is the CODE FONT.', String cr, 'Note: Before the change is accepted, the window must be closed and reopened.', String cr, String cr, 'This is also the DEFAULT TEXT FONT.', String cr, 'Note: This font type changes the font in every white text box.' translated;
		yourself.
	windowSpec children add: codeSpec.
	
	
		
	^builder build: windowSpec.