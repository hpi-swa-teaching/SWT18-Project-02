as yet unclassified
buildButtonBarWith: builder

	|panelSpec buttonSpec|
	panelSpec := builder pluggablePanelSpec new.
	panelSpec
		layout: #vertical;
		frame: (0.75@0.5 corner: 1@1);
		children: OrderedCollection new.
			
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'Apply' translated;
		help: 'Apply the chosen settings for your chosen font type' translated;
		action: #apply;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'Done' translated;
		help: 'Close the tool' translated;
		action: #exit;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	buttonSpec := builder pluggableButtonSpec new.
	buttonSpec
		model: self;
		label: 'RESET' translated;
		help: 'Go back to the default font settings' translated;
		action: #resetFonts;
		yourself.
	panelSpec children addLast: buttonSpec.
	
	^panelSpec