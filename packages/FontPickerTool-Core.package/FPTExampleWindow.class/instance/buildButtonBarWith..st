toolbuilder
buildButtonBarWith: builder
	
	| panelSpec buttonSpec|
	panelSpec := builder pluggablePanelSpec new.
	panelSpec
		layout: #horizontal;
		children: OrderedCollection new.
		
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: #buttonFontExplanation;
		help: 'This is the BALLOON HELP FONT' translated;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: #ballonHelpFontHint;
		help: 'This is the BALLOON HELP FONT' translated;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	^panelSpec